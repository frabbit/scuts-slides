### Macros


Maybe we can use macros for to translate

```haxe
filter(Cons([[1,2]], Nil), [[1,2]], ? );
```

or even better

```haxe
filter(Cons([[1,2]], Nil), [[1,2]]);
```

into something like this
```haxe
filter(Cons([[1,2]], Nil), [[1,2]], new EqArray(new EqArray(new EqInt())));
```