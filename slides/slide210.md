### Typeclass and implementation type context (Global)

When neither the source of a typeclass nor the source of the implementation class is
alterable there is another option to provide a global typeclass instance.

For the type `haxe.ds.Option` the implicit resolution algorithm 
does look for typeclass instances in the package `haxe.ds.option.instances` (convention).

Multiple instances for the same typeclass inside of this package will lead to ambiguity errors.

```haxe
// haxe.ds.option.instances.EqOption

class EqOption implements Eq<Option<T>> {
  final eqT:Eq<T>;
  @:implicit public static function instance (eqT:EqT) new EqOption();
  public function new (eqT) {
    this.eqT = eqT;
  }
  public function eq (a1:Option<T>, a2:Option<T>) return switch [a1, a2] {
    // ...
  }
}
```
