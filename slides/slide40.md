### Motivation

Type classes can compose


```haxe
class ToStringApi {
  public static function toString <T>(a:T, E:ToString<T>) {
    return E.toString(a);
  }
}
```

```haxe
ToStringApi.toString(true, new ToStringBool());
ToStringApi.toString([true], new ToStringArray(new ToStringBool()));
// they compose
ToStringApi.toString([[true]], new ToStringArray(new ToStringArray(new ToStringBool())));
```

With using
```haxe
true.toString(new ToStringBool());
[true].toString(new ToStringArray(new ToStringBool()));
[[true]].toString(new ToStringArray(new ToStringArray(new ToStringBool())));
```