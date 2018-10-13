### Limitations

#### Return type polymorphism.

As an alternative the typeclass must be resolved explicitly like this

```haxe
var x = CreateApi.createEmpty(Implicit.implicitly('Create<Array<_>>'));
```


