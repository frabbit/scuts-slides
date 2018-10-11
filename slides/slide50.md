### Motivation

Are not limited to one type, type classes can have multiple parameters.

```haxe
abstract Meter(Float) {
  public function new (x:Float) this = x;
  public function get ():Float return this;
}
```
```haxe
abstract Miles(Float) {
  public function new (x:Float) this = x;
  public function get ():Float return this;
}
```

```haxe
class Plus<A, B, C> {
  function plus (a:A, b:B):C;
}
```

```haxe
class PlusMeterMilesMeter implements Plus<Meter, Miles, Meter> {
  function plus (a:Meter, b:Miles):Meter {
    return new Meter(a.get() + b.get() * 1.60934);
  }
}
```