### Implicits

We need implicit arguments that are inserted
by the compiler on the call side.

```haxe
function filter <A>(a:List<A>, b:A, ?E:Implicit<Eq<A>>) {}
```

Normally an optional argument like `E` would become null, but if the compiler would be able to insert a macro call at this position.

```haxe
filter(Cons(1, Nil), 1);
```

would become

```haxe
filter(Cons(1, Nil), 1, Implicit.fromNothing());
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