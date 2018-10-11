### Static Scope

```haxe
class Foo {
	@:implicit static var eqInt = new EqInt();

	function foo () {
		// eqInt is available here
	}	
	static function foo () {
		// eqInt is available here
	}	
}
```