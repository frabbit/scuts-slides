### Limitations

#### Return type polymorphism.

As a workaround CreateApi.create can be implemented as a macro. 
As an alternative the typeclass must be resolved explicitly like.

```haxe
var x = CreateApi.create(Implicit.implicitly('Create<Array<Int>>'));
```
