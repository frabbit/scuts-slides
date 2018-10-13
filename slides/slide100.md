### Implicits

We need implicit arguments that are inserted by the compiler on the call side.

```haxe
function toString <T>(a:T, ?E:Implicit<ToString<T>>):String;
```

Normally an optional argument like `E` would become `null`, but if the compiler would be able to insert a macro call at that position.

```haxe
toString([true]);
```

would become

```haxe
toString([true], Implicit.fromNothing());
```

for the type

```haxe
@:forward abstract Implicit<T>(T) {
	@:fromNothing macro public static function fromNothing () {
		var et = haxe.macro.Context.getExpectedType();
		return resolveExpr(et);
	}
}
```

`fromNothing` is a feature hopefully coming to haxe, it's currently implemented in a branch of mine together with higher kinded types.