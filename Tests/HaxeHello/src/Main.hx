import sunaba.godot.Vector3;
import sunaba.godot.Vector2;
import sunaba.godot.Node;
import sunaba.godot.MeshInstance3D;
import sunaba.godot.BoxMesh;
import sunaba.godot.Camera3D;
import sunaba.godot.DirectionalLight3D;
import sunaba.godot.extensions.FreeLookCamera3D;

class Main extends sunaba.App {
    public static function main() {
        new Main();
    }

    public override function init() {
        trace("Hello, World!");
        var vec3_1 = new Vector3(1, 2, 3);
        trace(vec3_1.toString());
        var vec3_2 = new Vector3(4, 5, 6);
        trace(vec3_2.toString());
        var vec3_3 = vec3_1 + vec3_2;
        trace(vec3_3);

        var vec2_1 = new Vector2(1, 2);
        trace(vec2_1.toString());
        var vec2_2 = new Vector2(3, 4);
        trace(vec2_2.toString());
        var vec2_3 = vec2_1 + vec2_2;
        trace(vec2_3);

        var meshInstance = new MeshInstance3D();
        rootNode.addChild(meshInstance);

        var mesh = new BoxMesh();
        meshInstance.mesh = mesh;

        var light = new DirectionalLight3D();
        rootNode.addChild(light);

        var camera = new FreeLookCamera3D();
        rootNode.addChild(camera);
        camera.position = new Vector3(0, 0, 2.5);
    }

    public override function update(deltaTime : Float) {
        trace(deltaTime);
    }
}