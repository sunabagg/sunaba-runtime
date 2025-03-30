import sunaba.godot.extensions.FreeLookCamera3D;
import sunaba.godot.Vector3;
import sunaba.MapLoader;

class Main extends sunaba.App {
    static function main() {
        new Main();        
    }

    public override function init() {
        var freeLookCamera = new FreeLookCamera3D();
        rootNode.addChild(freeLookCamera);
        freeLookCamera.globalPosition = new Vector3(0, 0, -5);
        var funcGodotMap = MapLoader.createMapNode();
        if (funcGodotMap == null) {
            trace("Failed to load map");
        } else {
            rootNode.addChild(funcGodotMap);
            MapLoader.loadTextures("app://assets/textures/", ioInterface, funcGodotMap); // Loads textures from the specified directory
            // Optionally, you can set the position or any other properties of the map node
            MapLoader.addPostLoadCallback(() ->{
                // This callback will be called after the map is loaded
                trace("Map loaded successfully");
            }, funcGodotMap);
            MapLoader.loadMap("app://assets/test1.map", funcGodotMap, ioInterface);
        }
    }
}