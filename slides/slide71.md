### Motivation

Very powerful in combination with higher kinded types
```haxe
interface Iter<F> {
  function iterate <A>(fa:F<A>, f:A->Void):Void;
}
```

```haxe
class IterEither<L> implements Iter<Either<L, _>> {
  function iterate (fa:Either<L, A>, f:A->Void) {
    switch fa {
      case Right(x): f(x);
      case Left(_): // do nothing here
    }
  }
}
```