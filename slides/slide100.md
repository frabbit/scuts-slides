### Implicits

We need implicit arguments that are inserted
by the compiler on the call side.

```haxe
function toString <T>(a:T, ?T:Implicit<ToString<T>>):String;
```

Normally an optional argument like `T` would become null, but if the compiler would be able to insert a macro call at this position.

```haxe
toString([true]);
```

would become

```haxe
toString([true], Implicit.fromNothing());
```

for the type `Implicit`

```haxe
@:forward
abstract Implicit<T>(T) {
	@:fromNothing macro public static function fromNothing () {
		var et = haxe.macro.Context.getExpectedType();
		return generateExpr(et);
	}
}
```

It's a feature hopefully coming to haxe, which is currently implemented in my branch together with higher kinded types.