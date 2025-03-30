import sunaba.Scene;
import sunaba.SceneType;
import sunaba.GameObject;
import sunaba.Behavior;

class Main extends sunaba.App {
    public var canvasScene : Scene;

    public static function main() {
        new Main();
    }

    public override function init() {
        canvasScene = new Scene(SceneType.Canvas);
        var gameobject1 = new GameObject();
        canvasScene.addObject(gameobject1);
        var gameObject1Child1 = new GameObject();
        gameobject1.addChild(gameObject1Child1);
        var gameObject1Child2 = new GameObject();
        gameobject1.addChild(gameObject1Child2);
        gameObject1Child2.addComponent(DeltaTimePrinter);
        gameobject1.addComponent(HelloWorld);
        var subChild1 = new GameObject();
        gameObject1Child1.addChild(subChild1);

        var gameobject2 = new GameObject();
        canvasScene.addObject(gameobject2);
        gameobject2.addComponent(HelloOne);
        gameobject2.addComponent(HelloTwo);
        var gameObject2Child1 = new GameObject();
        gameobject2.addChild(gameObject2Child1);

        var gameobject3 = new GameObject();
        canvasScene.addObject(gameobject3);

        canvasScene.printTree();

        canvasScene.start();
    }

    public override function update(deltaTime : Float) {
        canvasScene.update(deltaTime);
    }
}