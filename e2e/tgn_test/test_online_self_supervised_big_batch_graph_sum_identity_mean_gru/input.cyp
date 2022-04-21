setup: |-
    CALL tgn.set_params({learning_type:'self_supervised', batch_size:50, num_of_layers:2, layer_type:'graph_sum', memory_dimension:100, time_dimension:100, num_edge_features:7, num_node_features:10, message_dimension:100, num_neighbors:5, edge_message_function_type:'identity',message_aggregator_type:'mean', memory_updater_type:'gru'});
    CREATE TRIGGER create_embeddings ON --> CREATE BEFORE COMMIT EXECUTE CALL tgn.update(createdEdges) YIELD *;

queries:
    - |-
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.09,-0.09,0.93,0.20,0.00,0.00,-0.90]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[0.16,0.16,0.75,0.66,0.00,1.49,-1.08]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.15,1.26,-0.38,0.00,-0.64,-0.91]}]->(b);
        MERGE (a:User {id: 6, features:[0.68,0.79,0.18,0.06,0.46,0.09,0.69,0.43,0.41,0.43]}) MERGE (b:Item {id: 6, features:[0.68,0.79,0.18,0.06,0.46,0.09,0.69,0.43,0.41,0.43]}) CREATE (a)-[:CLICKED {features:[-0.10,-0.11,1.29,-0.38,0.00,0.88,-1.11]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 7, features:[0.94,0.52,0.79,0.19,0.94,0.44,0.54,0.08,0.24,0.14]}) MERGE (b:Item {id: 7, features:[0.94,0.52,0.79,0.19,0.94,0.44,0.54,0.08,0.24,0.14]}) CREATE (a)-[:CLICKED {features:[0.23,0.21,1.21,-0.38,0.00,1.97,-1.16]}]->(b);
        MERGE (a:User {id: 8, features:[0.93,0.38,0.25,0.75,0.18,0.05,0.04,0.00,0.79,0.50]}) MERGE (b:Item {id: 1, features:[0.09,0.04,0.92,0.86,0.22,0.82,0.96,0.57,0.29,0.04]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.30,-0.38,0.00,-0.64,-0.94]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.12,-0.12,1.31,-0.38,0.00,-0.64,-0.96]}]->(b);
        MERGE (a:User {id: 9, features:[0.48,0.51,0.06,0.04,0.99,0.32,0.98,0.59,0.99,0.91]}) MERGE (b:Item {id: 8, features:[0.93,0.38,0.25,0.75,0.18,0.05,0.04,0.00,0.79,0.50]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 10, features:[0.91,0.97,0.04,0.27,0.01,0.51,0.06,0.49,0.37,0.43]}) MERGE (b:Item {id: 9, features:[0.48,0.51,0.06,0.04,0.99,0.32,0.98,0.59,0.99,0.91]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 7, features:[0.94,0.52,0.79,0.19,0.94,0.44,0.54,0.08,0.24,0.14]}) MERGE (b:Item {id: 7, features:[0.94,0.52,0.79,0.19,0.94,0.44,0.54,0.08,0.24,0.14]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.16,1.08,-0.38,0.00,-0.64,-0.75]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[0.32,0.30,1.18,-0.25,0.00,1.72,-1.16]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.16,1.22,-0.38,0.00,-0.64,-0.87]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 11, features:[0.18,0.30,0.54,0.34,0.64,0.35,0.60,0.18,0.76,0.69]}) MERGE (b:Item {id: 10, features:[0.91,0.97,0.04,0.27,0.01,0.51,0.06,0.49,0.37,0.43]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) MERGE (b:Item {id: 11, features:[0.18,0.30,0.54,0.34,0.64,0.35,0.60,0.18,0.76,0.69]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 13, features:[0.97,0.15,0.76,0.38,0.15,0.14,0.22,0.85,0.16,0.36]}) MERGE (b:Item {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.05,-0.05,1.04,0.00,0.00,1.47,-1.10]}]->(b);
        MERGE (a:User {id: 14, features:[0.89,0.71,0.51,0.63,0.08,0.82,0.48,0.48,0.52,0.65]}) MERGE (b:Item {id: 13, features:[0.97,0.15,0.76,0.38,0.15,0.14,0.22,0.85,0.16,0.36]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 15, features:[0.86,0.45,0.51,0.59,0.62,0.01,0.67,0.47,0.05,0.67]}) MERGE (b:Item {id: 14, features:[0.89,0.71,0.51,0.63,0.08,0.82,0.48,0.48,0.52,0.65]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 13, features:[0.97,0.15,0.76,0.38,0.15,0.14,0.22,0.85,0.16,0.36]}) MERGE (b:Item {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 15, features:[0.86,0.45,0.51,0.59,0.62,0.01,0.67,0.47,0.05,0.67]}) MERGE (b:Item {id: 14, features:[0.89,0.71,0.51,0.63,0.08,0.82,0.48,0.48,0.52,0.65]}) CREATE (a)-[:CLICKED {features:[-0.14,-0.14,0.42,1.46,0.00,-0.64,-0.85]}]->(b);
        MERGE (a:User {id: 15, features:[0.86,0.45,0.51,0.59,0.62,0.01,0.67,0.47,0.05,0.67]}) MERGE (b:Item {id: 14, features:[0.89,0.71,0.51,0.63,0.08,0.82,0.48,0.48,0.52,0.65]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 16, features:[0.04,0.92,0.41,0.67,0.17,0.99,0.65,0.06,0.15,0.85]}) MERGE (b:Item {id: 15, features:[0.86,0.45,0.51,0.59,0.62,0.01,0.67,0.47,0.05,0.67]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 13, features:[0.97,0.15,0.76,0.38,0.15,0.14,0.22,0.85,0.16,0.36]}) MERGE (b:Item {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) CREATE (a)-[:CLICKED {features:[-0.11,-0.11,1.26,-0.38,0.00,1.01,-1.10]}]->(b);
        MERGE (a:User {id: 17, features:[0.03,0.36,0.30,0.90,0.29,0.87,0.90,0.12,0.24,0.31]}) MERGE (b:Item {id: 16, features:[0.04,0.92,0.41,0.67,0.17,0.99,0.65,0.06,0.15,0.85]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 18, features:[0.49,0.19,0.37,0.75,0.39,0.26,0.99,0.43,0.75,0.24]}) MERGE (b:Item {id: 17, features:[0.03,0.36,0.30,0.90,0.29,0.87,0.90,0.12,0.24,0.31]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[0.17,0.16,0.89,0.39,0.00,1.43,-1.10]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.06,-0.07,1.21,-0.38,0.00,1.29,-1.08]}]->(b);
        MERGE (a:User {id: 19, features:[0.40,0.47,0.95,0.26,0.02,0.45,0.75,0.57,0.12,0.40]}) MERGE (b:Item {id: 18, features:[0.49,0.19,0.37,0.75,0.39,0.26,0.99,0.43,0.75,0.24]}) CREATE (a)-[:CLICKED {features:[-0.09,-0.10,1.01,-0.19,0.00,2.55,-1.12]}]->(b);
    - |-
        MERGE (a:User {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) MERGE (b:Item {id: 11, features:[0.18,0.30,0.54,0.34,0.64,0.35,0.60,0.18,0.76,0.69]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 20, features:[0.73,0.09,0.85,0.92,0.60,0.88,0.71,0.01,0.93,0.78]}) MERGE (b:Item {id: 19, features:[0.40,0.47,0.95,0.26,0.02,0.45,0.75,0.57,0.12,0.40]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 21, features:[0.75,0.07,0.82,0.96,0.75,0.35,0.24,0.44,0.79,0.81]}) MERGE (b:Item {id: 20, features:[0.73,0.09,0.85,0.92,0.60,0.88,0.71,0.01,0.93,0.78]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 22, features:[0.26,0.00,0.27,0.55,0.70,0.34,0.57,0.30,0.50,0.45]}) MERGE (b:Item {id: 21, features:[0.75,0.07,0.82,0.96,0.75,0.35,0.24,0.44,0.79,0.81]}) CREATE (a)-[:CLICKED {features:[-0.03,-0.02,1.01,-0.38,0.00,0.11,-0.77]}]->(b);
        MERGE (a:User {id: 23, features:[0.79,0.87,0.67,0.00,0.13,0.96,0.99,0.32,0.41,0.34]}) MERGE (b:Item {id: 22, features:[0.26,0.00,0.27,0.55,0.70,0.34,0.57,0.30,0.50,0.45]}) CREATE (a)-[:CLICKED {features:[5.01,4.82,1.06,-0.12,0.00,1.81,-1.11]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 18, features:[0.49,0.19,0.37,0.75,0.39,0.26,0.99,0.43,0.75,0.24]}) MERGE (b:Item {id: 23, features:[0.79,0.87,0.67,0.00,0.13,0.96,0.99,0.32,0.41,0.34]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) MERGE (b:Item {id: 11, features:[0.18,0.30,0.54,0.34,0.64,0.35,0.60,0.18,0.76,0.69]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.09,-0.09,0.74,0.82,0.00,0.68,-1.04]}]->(b);
        MERGE (a:User {id: 24, features:[0.69,0.86,0.45,0.72,0.33,0.28,0.50,0.21,0.93,0.89]}) MERGE (b:Item {id: 24, features:[0.69,0.86,0.45,0.72,0.33,0.28,0.50,0.21,0.93,0.89]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.16,0.32,1.12,0.00,1.83,-0.91]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.10,-0.11,1.29,-0.38,0.00,0.88,-1.11]}]->(b);
        MERGE (a:User {id: 25, features:[0.31,0.52,0.33,0.30,0.73,0.45,0.49,0.88,0.03,0.24]}) MERGE (b:Item {id: 25, features:[0.31,0.52,0.33,0.30,0.73,0.45,0.49,0.88,0.03,0.24]}) CREATE (a)-[:CLICKED {features:[0.12,0.15,1.11,-0.38,0.00,-0.45,-0.80]}]->(b);
        MERGE (a:User {id: 13, features:[0.97,0.15,0.76,0.38,0.15,0.14,0.22,0.85,0.16,0.36]}) MERGE (b:Item {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) CREATE (a)-[:CLICKED {features:[-0.11,-0.11,1.18,-0.38,0.00,1.73,-1.10]}]->(b);
        MERGE (a:User {id: 26, features:[0.33,0.44,0.82,0.35,0.22,0.63,0.17,0.96,0.72,0.15]}) MERGE (b:Item {id: 26, features:[0.33,0.44,0.82,0.35,0.22,0.63,0.17,0.96,0.72,0.15]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.35,-0.38,0.00,-0.64,-0.99]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[0.25,0.24,1.09,-0.07,0.00,1.82,-1.15]}]->(b);
        MERGE (a:User {id: 27, features:[0.76,0.22,0.14,0.62,0.00,0.36,0.27,0.86,0.10,0.16]}) MERGE (b:Item {id: 27, features:[0.76,0.22,0.14,0.62,0.00,0.36,0.27,0.86,0.10,0.16]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.33,-0.38,0.00,-0.64,-0.97]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 28, features:[0.03,0.50,0.95,0.06,0.92,0.38,0.99,0.82,0.20,0.66]}) MERGE (b:Item {id: 28, features:[0.03,0.50,0.95,0.06,0.92,0.38,0.99,0.82,0.20,0.66]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.35,-0.38,0.00,-0.64,-0.99]}]->(b);
        MERGE (a:User {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) MERGE (b:Item {id: 11, features:[0.18,0.30,0.54,0.34,0.64,0.35,0.60,0.18,0.76,0.69]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.33,-0.38,0.00,-0.64,-0.97]}]->(b);
        MERGE (a:User {id: 13, features:[0.97,0.15,0.76,0.38,0.15,0.14,0.22,0.85,0.16,0.36]}) MERGE (b:Item {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 29, features:[0.98,0.64,0.63,0.92,0.05,0.83,0.31,0.60,0.52,0.20]}) MERGE (b:Item {id: 29, features:[0.98,0.64,0.63,0.92,0.05,0.83,0.31,0.60,0.52,0.20]}) CREATE (a)-[:CLICKED {features:[4.60,4.46,1.11,-0.21,0.00,1.66,-1.10]}]->(b);
        MERGE (a:User {id: 19, features:[0.40,0.47,0.95,0.26,0.02,0.45,0.75,0.57,0.12,0.40]}) MERGE (b:Item {id: 18, features:[0.49,0.19,0.37,0.75,0.39,0.26,0.99,0.43,0.75,0.24]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 30, features:[0.33,0.48,0.15,0.52,0.03,0.30,0.63,0.96,0.91,0.32]}) MERGE (b:Item {id: 30, features:[0.33,0.48,0.15,0.52,0.03,0.30,0.63,0.96,0.91,0.32]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.15,1.26,-0.38,0.00,-0.64,-0.91]}]->(b);
        MERGE (a:User {id: 12, features:[0.13,0.32,0.44,0.65,0.66,0.53,0.13,0.21,0.64,0.66]}) MERGE (b:Item {id: 11, features:[0.18,0.30,0.54,0.34,0.64,0.35,0.60,0.18,0.76,0.69]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) MERGE (b:Item {id: 3, features:[0.09,0.23,0.83,0.06,0.66,0.84,0.26,0.73,0.57,0.80]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 9, features:[0.48,0.51,0.06,0.04,0.99,0.32,0.98,0.59,0.99,0.91]}) MERGE (b:Item {id: 8, features:[0.93,0.38,0.25,0.75,0.18,0.05,0.04,0.00,0.79,0.50]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.16,-0.94,4.42,0.00,-0.64,-0.75]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[0.01,-0.00,0.92,0.17,0.00,1.80,-1.09]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.17,-0.17,-0.94,3.62,0.00,-0.64,-0.45]}]->(b);
        MERGE (a:User {id: 31, features:[0.56,0.07,0.13,0.74,0.59,0.64,0.81,0.19,0.43,0.31]}) MERGE (b:Item {id: 31, features:[0.56,0.07,0.13,0.74,0.59,0.64,0.81,0.19,0.43,0.31]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.30,-0.38,0.00,-0.64,-0.94]}]->(b);
        MERGE (a:User {id: 32, features:[0.34,0.16,0.54,0.49,0.91,0.15,0.44,0.07,0.34,0.32]}) MERGE (b:Item {id: 32, features:[0.34,0.16,0.54,0.49,0.91,0.15,0.44,0.07,0.34,0.32]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 29, features:[0.98,0.64,0.63,0.92,0.05,0.83,0.31,0.60,0.52,0.20]}) MERGE (b:Item {id: 29, features:[0.98,0.64,0.63,0.92,0.05,0.83,0.31,0.60,0.52,0.20]}) CREATE (a)-[:CLICKED {features:[0.12,0.10,1.22,-0.38,0.00,2.02,-1.17]}]->(b);
        MERGE (a:User {id: 29, features:[0.98,0.64,0.63,0.92,0.05,0.83,0.31,0.60,0.52,0.20]}) MERGE (b:Item {id: 29, features:[0.98,0.64,0.63,0.92,0.05,0.83,0.31,0.60,0.52,0.20]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.35,-0.38,0.00,-0.64,-0.99]}]->(b);
        MERGE (a:User {id: 17, features:[0.03,0.36,0.30,0.90,0.29,0.87,0.90,0.12,0.24,0.31]}) MERGE (b:Item {id: 23, features:[0.79,0.87,0.67,0.00,0.13,0.96,0.99,0.32,0.41,0.34]}) CREATE (a)-[:CLICKED {features:[-0.11,-0.11,1.25,-0.38,0.00,0.22,-1.00]}]->(b);
        MERGE (a:User {id: 33, features:[0.50,0.25,0.54,0.65,0.28,0.15,0.39,0.58,0.77,0.57]}) MERGE (b:Item {id: 33, features:[0.50,0.25,0.54,0.65,0.28,0.15,0.39,0.58,0.77,0.57]}) CREATE (a)-[:CLICKED {features:[-0.05,-0.06,1.19,-0.38,0.00,1.56,-1.09]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[0.04,0.03,1.13,-0.15,0.00,1.86,-1.17]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 34, features:[0.08,0.53,0.70,0.69,0.31,0.25,0.21,0.43,0.73,0.38]}) MERGE (b:Item {id: 34, features:[0.08,0.53,0.70,0.69,0.31,0.25,0.21,0.43,0.73,0.38]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 9, features:[0.48,0.51,0.06,0.04,0.99,0.32,0.98,0.59,0.99,0.91]}) MERGE (b:Item {id: 8, features:[0.93,0.38,0.25,0.75,0.18,0.05,0.04,0.00,0.79,0.50]}) CREATE (a)-[:CLICKED {features:[1.05,1.13,1.01,-0.02,0.00,-0.00,-0.89]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[0.16,0.14,0.91,0.22,0.00,2.16,-1.14]}]->(b);
        MERGE (a:User {id: 17, features:[0.03,0.36,0.30,0.90,0.29,0.87,0.90,0.12,0.24,0.31]}) MERGE (b:Item {id: 23, features:[0.79,0.87,0.67,0.00,0.13,0.96,0.99,0.32,0.41,0.34]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 25, features:[0.31,0.52,0.33,0.30,0.73,0.45,0.49,0.88,0.03,0.24]}) MERGE (b:Item {id: 25, features:[0.31,0.52,0.33,0.30,0.73,0.45,0.49,0.88,0.03,0.24]}) CREATE (a)-[:CLICKED {features:[-0.15,-0.15,1.33,-0.38,0.00,-0.64,-0.97]}]->(b);
        MERGE (a:User {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) MERGE (b:Item {id: 5, features:[0.06,0.60,0.70,0.16,0.61,0.51,0.84,0.53,0.93,0.92]}) CREATE (a)-[:CLICKED {features:[-0.10,-0.10,1.30,-0.38,0.00,0.83,-1.11]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) MERGE (b:Item {id: 2, features:[0.99,0.96,0.34,0.38,0.20,0.37,0.14,0.01,0.03,0.32]}) CREATE (a)-[:CLICKED {features:[1.21,1.17,1.11,-0.13,0.00,1.69,-1.14]}]->(b);
        MERGE (a:User {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) MERGE (b:Item {id: 4, features:[0.81,0.03,0.64,0.57,0.16,0.95,0.65,0.97,0.95,0.98]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.16,-0.10,2.62,0.00,-0.64,-0.82]}]->(b);
        MERGE (a:User {id: 35, features:[0.11,0.05,0.42,0.39,0.61,0.16,0.10,0.96,0.78,0.37]}) MERGE (b:Item {id: 35, features:[0.11,0.05,0.42,0.39,0.61,0.16,0.10,0.96,0.78,0.37]}) CREATE (a)-[:CLICKED {features:[-0.18,-0.18,-0.94,-0.38,0.00,-0.64,1.05]}]->(b);
        MERGE (a:User {id: 17, features:[0.03,0.36,0.30,0.90,0.29,0.87,0.90,0.12,0.24,0.31]}) MERGE (b:Item {id: 23, features:[0.79,0.87,0.67,0.00,0.13,0.96,0.99,0.32,0.41,0.34]}) CREATE (a)-[:CLICKED {features:[-0.16,-0.16,0.14,-0.38,0.00,-0.64,0.09]}]->(b);

cleanup: |-
    CALL tgn.reset() YIELD *;
    DROP TRIGGER create_embeddings;
