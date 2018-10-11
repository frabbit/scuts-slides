### Motivation

Very powerful in combination with **higher kinded types** aka. **type constructors**.

```haxe
interface Iter<F> {
  function iterate <A>(fa:F<A>, f:A->Void):Void;
}
```
```haxe
class IterArray implements Iter<Array<_>> {
  function iterate (fa:Array<A>, f:A->Void) {
    for (e in fa) f(e);
  }
}
```
```haxe
class IterStringMap implements Iter<StringMap<_>> {
  function iterate (fa:StringMap<A>, f:A->Void) {
    for (e in fa) f(e);
  }
}
```
