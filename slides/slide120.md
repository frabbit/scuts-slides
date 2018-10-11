### Implicit resolution

We are looking for variables (candidates) with the right type.

```haxe
var toStringBool = new ToStringBool();
toString(true, ?); // the local variable toStringBool looks compatible
```

But, we don't want to test all variables because it's expensive and quite intrusive. Currently you have to mark them.

```haxe
// for static and member variables
@:implicit var toStringBool = new ToStringBool(); 
// for local variables metadata is not analyzable from our macro
// so we misuse the variable type to mark them.
var toStringBool:Implicit<ToStringBool> = new ToStringBool(); 
```

Now the macro only looks for marked variables and unifies them against the expected type.

```haxe
toString(true, toStringBool);
```