### But it's verbose and looks

Consider

```haxe
filter(Cons([[1,2]], Nil), [[1,2]], new EqArray(new EqArray(new EqInt())));
```

Let's take a look at the type
```haxe
filter:T -> Eq<T> -> T
```

Partial function application:
```haxe
filter.bind(Cons([[1,2]], Nil), [[1,2]]) : Eq<Array<Array<Int>> -> Array<Array<Int>
```
