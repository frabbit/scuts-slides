### Dependency Resolution

Consider the following typeclass instance.

```haxe
class EqArray<T> implements Eq<Array<T> {
  @:implicit public static function instance <T>(eqT:Eq<T>) return new EqArray(eqT);
  private var eqT:Eq<T>
  public function new (eqT:Eq<T>) {
	  this.eqT = eqT
  }
  public function eq (a1:Array<T>, a2:Array<T>) { /*...*/ };
}
```

When the implicit resolution algorithm is looking for a candidate of type `Eq<Array<Int>>` it only looks at the return
type. In this case `EqArray<T>`, `EqArray<T>` unifies with `Eq<Array<Int>>` in which case the algorithm tries to resolve all dependencies
recursively. In this case the dependency is `Eq<Int>` which is resolved by the same algorithm.