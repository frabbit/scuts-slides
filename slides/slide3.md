### Translation

Typeclass Instances in Haxe.

```haskell
instance Eq Int where
  eq a b = intEq a b -- specialized eq function
```

```haxe
class EqInt implements Eq<Int> {
  public function new () {}
  public function eq (a1:Int, a2:Int) return a1 == a2;
}
```