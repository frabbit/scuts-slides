### Using / Import Scope

```haxe
// Foo.hx
class Foo {
	
	@:implicit public static var eqInt = new EqInt();
}
```

```haxe
// Bar.hx
import Foo; 
// or using Foo 
// or import Foo.eqInt;

class Bar {
	function foo () {
		// eqInt is available here
	}	
	static function foo () {
		// eqInt is available here
	}	
}
```

