### Motivation

We need a better way to use them, Motiviation for implicit Parameters.

```haxe
class EqApi {
  public static function eq <T>(a:T, b:T, ?E:Implicit<Eq<T>>) {
    return E.eq(a, b);
  }
}
```

```haxe
EqApi.eq(1, 1); // the type class instance is resolved and inserted implicitly.

1.eq(1); // with using
```
