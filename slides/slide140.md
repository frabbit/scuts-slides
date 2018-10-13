### Local Scope

```haxe
var eqInt:Implicit<EqInt> = new EqInt(); 
// eqInt is available for resolution
```

or as a function parameter

```haxe
function foo (eqInt:Implicit<EqInt>) {
	// eqInt is available here
}

```