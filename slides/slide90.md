### Macros

Maybe we can use macros to translate

```haxe
toString([true]);
```

into something like this:

```haxe
toString([true], new ToStringArray(new ToStringBool()));
```