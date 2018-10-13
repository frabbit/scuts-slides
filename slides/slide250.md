### Ambiguity

If we find more than one candidate in one scope an error is generated

```haxe
var eqInt1:Implicit<EqInt> = new EqInt();
var eqInt2:Implicit<EqInt> = new EqInt();
eq(1); 
```

<pre style="font-size:0.5em; padding:10px; box-sizing:border-box;">
Ambiguity error, 2 implicits for type Eq<Int> in Local-Scope
    eqInt2
    eqInt1
To resolve this issue, make sure that only one of them is in this scope.
</pre>

