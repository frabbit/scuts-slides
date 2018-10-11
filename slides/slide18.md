### Motivation

We need a better way to use them, Motiviation for implicits.


```haxe
class EqApi {
  // the type class becomes part of the function signature.
  public static function eq <T>(a:T, b:T, ?E:Implicit<Eq<T>>) {
    return E.eq(a, b);
  }
}

EqApi.eq(1, 1); // the type class instance is resolved and inserted implicitly.

1.eq(1); // with using

```
