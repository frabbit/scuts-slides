### Collecting Candidates

In case of

```haxe
// Eq.hx
interface Eq<A> {
  function eq (a1:A, a2:A):Bool;
}
class EqInt implements Eq<Int> {
  @:implicit public static var instance = new EqInt();
  public function new () {}
  public function eq (a1:Int, a2:Int) { return a1 == a2; }
}
class EqString implements Eq<String> {
  @:implicit public static var instance = new EqString();
  public function new () {}
  public function eq (a1:String, a2:String) return a1 == a2; 
}
```

The expressions of the two stored candidates are `Eq.EqInt.instance` and `Eq.EqString.instance`.
Both are registered for the type itself and for all implemented interfaces recursively.
In case of `EqInt` it's `EqInt` and `Eq<Int>`, which means whenever the algorithm looks for one 
of those types in the global scope this candidate is selected and the corresponding expression is generated.

