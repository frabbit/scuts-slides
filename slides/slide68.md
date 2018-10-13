### Motivation

```haxe
interface Iter<F> {
  function iterate <A>(fa:F<A>, f:A->Void):Void;
}
```

Arrays can be Iters.

```haxe
class IterArray implements Iter<Array<_>> {
  function iterate <A>(fa:Array<A>, f:A->Void) {
    for (e in fa) f(e);
  }
}
```

StringMaps can be Iters.

```haxe
class IterStringMap implements Iter<StringMap<_>> {
  function iterate <A>(fa:StringMap<A>, f:A->Void) {
    for (e in fa) f(e);
  }
}
```
