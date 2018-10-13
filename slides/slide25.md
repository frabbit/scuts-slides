### Motivation

Types can be made instances of a Type class retroactively.

No need to predict the future.

```haxe
interface Compare<A> {
  function compare (a1:A, a2:A):Int;
}

class CompareString implements Compare<String> {
  function compare (a1:String, a2:String) 
  	return a1 < a2 ? -1 : a1 > a2 ? 1 : 0;
}
```