### Local Scope

```haxe
var eqInt:Implicit<EqInt> = new EqInt(); 
// eqInt is available for resolution
```

```haxe
function foo (eqInt:Implicit<EqInt>) {
	// eqInt is available here
}

```