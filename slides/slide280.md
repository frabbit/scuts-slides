### ImplicitInstance Sugar

The build macro `scuts.syntax.ImplicitInstance` tranlates this

```haxe
class EqOption implements Eq<Option<T>> {
  final eqT:Eq<T>;
  @:implicit public static function instance (eqT:EqT) new EqOption();
  public function new (eqT) { 
  this.eqT = eqT; 
  }
  public function eq (a1:Option<T>, a2:Option<T>) return { /*...*/ }
}
```

into

```haxe
class EqOption implements Eq<Option<T>> implements ImplicitInstance {
  final eqT:Eq<T>;
  function eq (a1:Option<T>, a2:Option<T>) return { /*...*/ }
}
```

