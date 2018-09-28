### Composition of type classes

```haxe
class EqArray<T> implements Eq<Array<T> {
  private var eqT:Eq<T>
  public function new (eqT:Eq<T>) {
	  this.eqT = eqT
  }
  public function eq (a1:Array<T>, a2:Array<T>) {
	  if (a1.length != a2.length) return false;

	  for (i in 0...a1.length) {
		  if (!eqT(a1[i], a2[i]) return false;
	  }
	  return true;
  };
}
```