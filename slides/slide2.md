### Translation

Typeclasses in Haxe.

```haskell
class Eq a where
  eq :: a -> a -> Boolean
```

```haxe
interface Eq<A> {
  function eq (a1:A, a2:A):Bool;
}
```