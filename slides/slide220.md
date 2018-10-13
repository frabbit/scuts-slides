### typeclass hierarchy

To understand the last scope where the algorithm looks for implicits
it's important to understand that type classes can form hierachies.

Hierarchies of type classes are implemented as composition, not by inheritance.

```haxe
interface Ord<T> {
  public var Eq(default, null):Eq<T>;
  public function compare (a:T, b:T):Int;
}
```

```haxe
class OrdInt<T> {
  public final Eq:EqInt; // via composition

  function new () {
    this.Eq = EqInt.instance;
  }
  public function compare (a:Int, b:Int):Int {
    //...
  }
}
```