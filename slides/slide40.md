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
ToStringApi.toString([true], new ToStringArray(ToStringBool()));
// they compose
ToStringApi.toString([[true]], new ToStringArray(new ToStringArray(ToStringBool())));
```

With using
```haxe
true.toString(new ToStringBool());
[true].toString(new ToStringArray(ToStringBool()));
[[true]].toString(new ToStringArray(new ToStringArray(ToStringBool())));
```