### Motivation

Think about `Array` as function on types that requires another type as a parameter `Array = T -> Array<T>`.

This abstraction allows us to define a function like the following:

```haxe
function iterate <F>(x:F<Int>, f:Int -> Void):Void;
```

`iterate` expects that `F` is a type constructor like `Array` for example.