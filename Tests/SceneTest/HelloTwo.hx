import sunaba.Behavior;

class HelloTwo extends Behavior {
    public override function start() {
        var helloOne : HelloOne = getComponent(HelloOne);
        helloOne.sayHello("mintkat");
    }
}