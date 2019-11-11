import Entity from './Entity';
import SceneManager from '../base/SceneManager';

import {
    PlaneGeometry,
    DoubleSide,
    Mesh,
    Vector3,
    MeshBasicMaterial
} from 'three';

const UP = new Vector3(0, 1, 0);
const DOWN = new Vector3(0, -1, 0);

export default class Plane extends Entity {

	constructor(height, width, options = {}) {
		super(options);

        const { color = 0xfffffff } = options;

        this.material = new MeshBasicMaterial({ color, side: DoubleSide });
		this.geometry = new PlaneGeometry(width, height);

		this.mesh = new Mesh(this.geometry, this.material);

		const { addUniverse = true } = options;

		SceneManager.add(this.mesh, this, addUniverse);
	}

    static get UP() { return UP; }
    static get DOWN() { return DOWN; }

    face(direction) {
        const vector = new Vector3(direction.x, direction.y, direction.z);
        
        this.mesh.lookAt(vector);
    }

	toJSON() {
		return {
			mesh: this.mesh.toJSON(),
			script: this.script && this.script.toJSON(),
			texture: this.texture
		}
	}
}