### Function Usage

Typeclasses compose

```haxe
filter(Cons([1,2], Nil), [1,2], new EqArray(new EqInt()));
```

```haxe
filter(Cons([[1,2]], Nil), [[1,2]], new EqArray(new EqArray(new EqInt())));
```


