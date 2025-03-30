import sunaba.Behavior;

class HelloOne extends Behavior {
    public function sayHello(name : String) {
        var helloStr = "Hello, " + name + "!";
        Sys.println(helloStr);
    }
}