### Member Scope

```haxe
class Foo {
	@:implicit var eqInt = new EqInt();

	function foo () {
		// eqInt is available here
	}	
}
```