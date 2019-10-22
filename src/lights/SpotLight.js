import Light from './Light';
import Config from '../base/config';
import Mesh from '../entities/mesh';
import {
    SpotLight as THREESpotLight,
    MeshBasicMaterial,
    SphereGeometry,
    DirectionalLightHelper
} from 'three';
import SceneManager from '../base/SceneManager';
import debounce from '../lib/debounce';

export default class SpotLight extends Light {

    constructor(color, intensity, target) {
        super(color, intensity);

        this.light = new THREESpotLight(color, intensity);

        if (target && target instanceof Object) {
            this.target = target;
            const { x = 0, y = 0, z = 0 } = target;
            this.light.target.position.set(x, y, z);
        }

        if (Config.lights().shadows) {
            this.light.castShadow = true;
            this.light.shadow.mapSize.width = 2048;
            this.light.shadow.mapSize.height = 2048;

            const d = 300;

            this.light.shadow.camera.left = -d;
            this.light.shadow.camera.right = d;
            this.light.shadow.camera.top = d;
            this.light.shadow.camera.bottom = -d;

            this.light.shadow.camera.far = 1000;
        }

        SceneManager.add(this.light, this);
    }

    getTargetMesh(initialPosition) {
        const geometry = new SphereGeometry(3, 6, 6);
        const material = new MeshBasicMaterial({
            color: 0xeeeeee,
            wireframe: true
        });

        const target = new Mesh(geometry, material);

        target.position(initialPosition);

        return target;
    }

    targetPosition(options) {
        if (this.target && options === undefined) {
            return {
                ...this.target.position()
            };
        }

        if (!this.target) {
            this.target = this.getTargetMesh(options);
        }

        const { x, y, z } = this.target.position();

        const position = {
            x: options.x === undefined ? x : options.x,
            y: options.y === undefined ? y : options.y,
            z: options.x === undefined ? z : options.z
        };

        if (this.target) {
            this.target.position(position);
            this.light.target.position.set(position.x, position.y, position.z);
        }
    }

    addHelper() {
        this.helper = new DirectionalLightHelper(this.light, 10);
        SceneManager.add(this.helper, null, false);

        const segments = 8;
        const radius = 5;
        const geometry = new SphereGeometry(radius, segments, segments);
        const material = new MeshBasicMaterial({
            color: 0xff0000,
            wireframe: true
        });

        this.holder = new Mesh(geometry, material);
    }

    hasTarget() {
        return !!this.target;
    }

    // overriding from base class
    update(dt) {
        super.update(dt);
        //  setting position if the light is using a helper.
        if (this.hasHelper()) {
            //this.position(this.holder.position());
            const { x = 0, y = 0, z = 0 } = this.holder.position();
            this.light.position.set(x, y, z);

            this.helper.update();
        }

    }
}