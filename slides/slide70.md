### Motivation

```haxe
interface Iter<F> {
  function iterate <A>(fa:F<A>, f:A->Void):Void;
}
```

Options can be Iters.

```haxe
class IterOption implements Iter<Option<_>> {
  function iterate <A>(fa:Option<A>, f:A->Void) {
    switch fa {
      case Some(x): f(x);
      case None: // do nothing here
    }
  }
}
```
