### Typeclass and implementation type context (Global)

All implicit candidates / instances defined
in the same module as the typeclass or the **implementation
type**. 

Here we define the type `Foo` and the instance implementation for `Eq` in the file `Foo.hx`:

```haxe
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
