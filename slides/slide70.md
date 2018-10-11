### Motivation

Very powerful in combination with higher kinded types
```haxe
interface Iter<F> {
  function iterate <A>(fa:F<A>, f:A->Void):Void;
}
```
```haxe
class IterOption implements Iter<Option<_>> {
  function iterate (fa:Option<A>, f:A->Void) {
    switch fa {
      case Some(x): f(x);
      case None: // do nothing here
    }
  }
}
```
