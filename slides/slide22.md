### typeclass hierarchy

To understand the last scope where we look for implicits
it's important that type classes can form hierachies.

```haxe
interface Ord<T> {
  public var Eq(default, null):Eq<T>;
  public function compare (a:T, b:T):Int;
}
```

```haxe
class OrdInt<T> {
  public final Eq:EqInt;

  function new () {
    this.Eq = EqInt.instance;
  }
  public function compare (a:Int, b:Int):Int {
    //...
  }
}
```