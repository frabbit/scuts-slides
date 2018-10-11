### Implicits

Consider the function toString

```haxe
function toString <T>(a:T, E:ToString<T>):String {
  return E.toString(a);
}
```
and a valid call

```haxe
toString([[true]], new ToStringArray(new ToStringArray(new ToStringBool())));
```

Let's take a look at the type
```haxe
toString : T -> ToString<T> -> T
```

Partial function application:
```haxe
toString.bind([[true]]) : ToString<Array<Array<Bool>> -> String
```
We need an expression with this type.