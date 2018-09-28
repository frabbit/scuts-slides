### Motivation

Typeclasses, Example in Haskell.


Eq is about structural not physical equality.

```haskell
class Eq a where
  eq :: a -> a -> Boolean
```

```haskell
instance eqInt :: Eq Int where
  eq a b = intEq a b -- specialized
```

Usage:
```haskell
data List a = Cons a | Nil -- definition of a list

filter :: forall a . (Eq a) => List a -> a -> List a
filter Nil _ = Nil
filter (Cons h tail) b = 
  let t = filter tail b in
  if not eq h b then Cons h t else t
```