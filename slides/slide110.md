### Implicit Resolution

Consider the case

```haxe
function toString <T>(a:T, ?T:Implicit<ToString<T>>):String;
```

```haxe
toString(true);
```

We need to find an expression who's type unifies with `ToString<Bool>`.