import sunaba.godot.extensions.UiDocument;
import sunaba.io.IoManager;
import sunaba.godot.Node;
import sunaba.godot.Label;
import sunaba.godot.Button;
import sunaba.core.LuaEvent;
import sunaba.App;

class Main extends App {
    public static function main() {
        new Main();
    }

    override function init() {
        var uiDocument = new UiDocument(ioInterface);
        rootNode.addChild(uiDocument);
        uiDocument.load("app://test.xml");

        var label : Label = cast uiDocument.getObject("Panel/VBoxContainer/Control/Label");
        var button : Button = cast uiDocument.getObject("Panel/VBoxContainer/Control/Button");

        var counter : Int = 0;

        LuaEvent.add(button.pressed, function() : Void {
            counter++;
            label.text = "You clicked me " + counter + " times!";
        });
    }
    
}