### Motivation

Type classes can compose

```haxe
interface ToString<A> {
  function toString (x:A):String;
}
```
```haxe
class ToStringBool implements ToString<Bool> {
  function toString (x:Bool) {
    return if (x) "true" else "false";
  }
}
```
```haxe
class ToStringArray<T> implements ToString<Array<T>> {
  var toStringT:ToString<T>;
  function toString (x:Array<T>) {
    var elems = [for (e in x) toStringT.toString(e)].join(",");
    return "[" + elems + "]";
  }
}
```