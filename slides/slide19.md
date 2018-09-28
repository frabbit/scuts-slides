### Typeclass and implementation type context (Global)

All implicit candidates / instances defined
in the same module as the typeclass (Eq) or the implementation
type (Int for Eq<Int>).

```haxe
// Eq.hx
interface Eq<A> {
  function eq (a1:A, a2:A):Bool;
}
class EqInt implements Eq<Int> {
  @:implicit public static var instance = new EqInt();
  public function new () {}
  public function eq (a1:Int, a2:Int) return a1 == a2;
}
```
