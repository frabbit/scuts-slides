### Typeclass and implementation type context (Global)

All implicit candidates / instances defined
in the same module as the typeclass or the implementation
type.

Here we define the implementation for `Eq<Int>` in the same file as `Eq`.

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
