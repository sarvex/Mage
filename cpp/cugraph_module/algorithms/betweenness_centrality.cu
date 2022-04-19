// Copyright (c) 2016-2022 Memgraph Ltd. [https://memgraph.com]
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "mg_cugraph_utility.hpp"

namespace {
// TODO: Check Betweenness instances
using vertex_t = int32_t;
using edge_t = int32_t;
using weight_t = double;
using result_t = double;

constexpr char const *kProcedureBetweenness = "get";

constexpr char const *kArgumentNormalized = "normalized";

constexpr char const *kResultFieldNode = "node";
constexpr char const *kResultFieldRank = "rank";

void InsertBetweennessRecord(mgp_graph *graph, mgp_result *result, mgp_memory *memory, const std::uint64_t node_id,
                             double rank) {
  auto *record = mgp::result_new_record(result);
  mg_utility::InsertNodeValueResult(graph, record, kResultFieldNode, node_id, memory);
  mg_utility::InsertDoubleValueResult(record, kResultFieldRank, rank, memory);
}

void BetweennessProc(mgp_list *args, mgp_graph *graph, mgp_result *result, mgp_memory *memory) {
  try {
    auto normalized = mgp::value_get_bool(mgp::list_at(args, 0));

    raft::handle_t handle{};
    auto stream = handle.get_stream();

    auto mg_graph = mg_utility::GetGraphView(graph, result, memory, mg_graph::GraphType::kDirectedGraph);
    auto n_vertices = mg_graph.get()->Nodes().size();
    // IMPORTANT: Betweenness centrality cuGraph algorithm works only on legacy code
    auto cu_graph_ptr =
        mg_cugraph::CreateCugraphLegacyFromMemgraph<vertex_t, edge_t, weight_t>(*mg_graph.get(), handle);
    auto cu_graph_view = cu_graph_ptr->view();

    rmm::device_uvector<result_t> betweenness_result(n_vertices, stream);
    // TODO: Add weights to the betweenness centrality algorithm
    cugraph::betweenness_centrality<vertex_t, edge_t, weight_t>(handle, cu_graph_view, betweenness_result.data(),
                                                                normalized, false, static_cast<weight_t *>(nullptr));

    for (vertex_t node_id = 0; node_id < betweenness_result.size(); ++node_id) {
      auto rank = betweenness_result.element(node_id, stream);
      // There is an offset in the result
      if (std::abs(rank) < 1e-20) rank = 0;
      InsertBetweennessRecord(graph, result, memory, mg_graph->GetMemgraphNodeId(node_id), rank);
    }
  } catch (const std::exception &e) {
    // We must not let any exceptions out of our module.
    mgp::result_set_error_msg(result, e.what());
    return;
  }
}
}  // namespace

extern "C" int mgp_init_module(struct mgp_module *module, struct mgp_memory *memory) {
  mgp_value *default_normalized;
  try {
    auto *betweenness_proc = mgp::module_add_read_procedure(module, kProcedureBetweenness, BetweennessProc);

    default_normalized = mgp::value_make_bool(100, memory);

    mgp::proc_add_opt_arg(betweenness_proc, kArgumentNormalized, mgp::type_bool(), default_normalized);

    mgp::proc_add_result(betweenness_proc, kResultFieldNode, mgp::type_node());
    mgp::proc_add_result(betweenness_proc, kResultFieldRank, mgp::type_float());

  } catch (const std::exception &e) {
    mgp_value_destroy(default_normalized);
    return 1;
  }

  mgp_value_destroy(default_normalized);
  return 0;
}

extern "C" int mgp_shutdown_module() { return 0; }
