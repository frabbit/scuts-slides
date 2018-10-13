### Static Scope

```haxe
class Foo {
	@:implicit static var eqInt = new EqInt();

	function foo1 () {
		// eqInt is available here
	}	
	static function foo2 () {
		// eqInt is available here
	}	
}
```