### Typeclass and implementation type context (Global)

All implicit candidates / instances defined
in the same module as the typeclass or the implementation
type. In case of the typeclass `Eq` and the implementation class `Foo` 
the file `Foo.hx` would look like this:

```haxe
// Foo.hx
class Foo {
	public final x : Int;

	function new (x) {
		this.x = x;	
	}
}

class EqFoo implements Eq<Int> {
  @:implicit public static var instance = new EqFoo();
  public function new () {}
  public function eq (a1:Foo, a2:Foo) return a1.x == a2.x;
}
```
