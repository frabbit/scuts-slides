### Implicit Resolution

Consider the case

```haxe
function filter <A>(a:List<A>, b:A, ?E:Implicit<Eq<A>>);
```

```haxe
filter(Cons(1, Nil), 1);
```

We need to find an expression who's type unifies with `Eq<Int>`.