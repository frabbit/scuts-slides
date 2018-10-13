### Implicit resolution

And this is roughly what happens inside of`Implicit.fromNothing()`. 

For the next function call, the algorithm is looking for variables (candidates) with the right type at position `?`.

```haxe
var toStringBool = new ToStringBool();
toString(true, ?); // the local variable toStringBool looks compatible
```

But, the macro shouldn't test all available variables because that's expensive and quite intrusive. 

Currently you have to mark them.

```haxe
// for static and member variables
@:implicit var toStringBool = new ToStringBool(); 
// for local variables metadata is not analyzable from our macro
// so we misuse the variable type to mark them.
var toStringBool:Implicit<ToStringBool> = new ToStringBool(); 
```

Now the macro only looks for marked variables, unifies them against the expected type and finally inserts them at the expected position.

```haxe
toString(true, toStringBool);
```