### Implicit resolution

We are looking for variables (candidates) with the right type.

```haxe
var eqInt = new EqInt();
filter(Cons(1, Nil), ?); // the local variable eqInt looks compatible
```

But, we don't want to test all variables because it's expensive and not controllable. We need to mark them.

```haxe
// for static and member variables
@:implicit var eqInt = new EqInt(); 
// for local variables metadata is not analyzable from our macro
// so we misuse the variable type for that.
var eqInt:Implicit<EqInt> = new EqInt(); 
```

Now the macro only looks for marked variables and unifies them against the expected type.

```haxe
filter(Cons(1, Nil), eqInt); // the local variable eqInt looks fine to insert
```