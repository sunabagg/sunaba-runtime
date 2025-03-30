import sunaba.Behavior;

class DeltaTimePrinter extends Behavior {
    override function update(deltaTime:Float):Void {
        trace(deltaTime);
    }
}