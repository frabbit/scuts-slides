### Motivation

How to use them?

```haxe
class EqApi {
  // the type class becomes part of the function signature.
  public static function eq <T>(a:T, b:T, E:Eq<T>) {
    return E.eq(a, b);
  }
}

EqApi.eq(1, 1, new EqPerson());

1.eq(1, new EqPerson()); // with using

```
