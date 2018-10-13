### Module Scope

Other Types in the same file.

```haxe
class Foo {
	// must be public
	@:implicit public static var eqInt = new EqInt();
}
class Bar {
	function foo () {
		// eqInt is available here
	}	
	static function foo () {
		// eqInt is available here
	}	
}
```