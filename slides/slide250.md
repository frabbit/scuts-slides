### Ambiguity

If we find more than one candidate in one scope an error is generated

```haxe
var eqInt1:Implicit<EqInt> = new EqInt();
var eqInt2:Implicit<EqInt> = new EqInt();
filter(Cons(1, Nil), ?); 
```

```haxe
var x = 0;
```

```
Test.hx:29: characters 3-26 : Ambiguity error, 2 implicits for type Eq<Int> in Local-Scope
Test.hx:29: characters 3-26 :     eqInt2
Test.hx:29: characters 3-26 :     eqInt1
Test.hx:29: characters 3-26 : To resolve this issue, make sure that only one of them is in this scope.
```

