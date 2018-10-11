### Motivation

Abstracts can have an implementation of a type class.

There is no way to do this with inheritance.

```haxe
abstract Meter(Int) {
  public function unwrap ():Int return this;
}

interface Compare<A> {
  function compare (a1:A, a2:A):Int;
}

class CompareMeter implements Compare<Meter> {
  function compare (a1:Meter, a2:Meter) 
  	return a1.unwrap() < a2.unwrap() ? -1 : a1.unwrap() > a2.unwrap() ? 1 : 0;
}
```