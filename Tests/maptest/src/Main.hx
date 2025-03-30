import sunaba.godot.extensions.MapNode;
import sunaba.godot.extensions.FreeLookCamera3D;
import sunaba.godot.Vector3;

class Main extends sunaba.App {
    static function main() {
        new Main();        
    }

    public override function init() {
        var freeLookCamera = new FreeLookCamera3D();
        rootNode.addChild(freeLookCamera);
        freeLookCamera.globalPosition = new Vector3(0, 0, -5);
        var mapNode = new MapNode(ioInterface);
        rootNode.addChild(mapNode);
        mapNode.load("app://assets/test1.map");
    }
}