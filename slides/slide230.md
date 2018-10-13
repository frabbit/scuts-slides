### typeclass hierarchy

Now consider the following code:

```haxe
function bar <T>(a:T, ?E:Implicit<Eq<T>>)
function foo <T>(a:T, ?O:Implicit<Ord<T>>) {
  // at this point we only have O in scope
  // but the algorithm doesn't now that Ord implies Eq.
  bar(a);
}
```

That's were conversions come into play, for `foo.Eq` the macro
looks by convention in the package `foo.eq.hierarchy`. A conversion
could look like this. 

```haxe
class FromOrd {
	@:implicit public static inline function toEq<A>(O:Ord<A>):Eq<A> return O.Eq;
}
```
It's not a special kind of an implicit. It just has lower precedence in the resolution algorithm.
