### Motivation

Type classes can compose.

A lot more readable with implicits parameters.

```haxe
ToStringApi.toString(true);
ToStringApi.toString([true]);
ToStringApi.toString([[true]]);
```

With using
```haxe
true.toString();
[true].toString();
[[true]].toString();
```