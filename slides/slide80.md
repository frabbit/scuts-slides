### Implicits

Consider the function toString

```haxe
function toString <T>(a:T, E:ToString<T>):String {
  return E.toString(a);
}
```

Let's take a look at the type of `toString`

```haxe
T -> ToString<T> -> T
```

After function application `toString.bind([true])` it becomes:

```haxe
ToString<Array<Bool>> -> String
```