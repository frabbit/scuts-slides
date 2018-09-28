### Translation

In haskell 

```haskell
filter :: forall a . Eq a => List a -> a -> List a
```

desugars to something like

```haskell
filter :: Eq a -> List a -> a -> List a
```

The typeclass becomes the first argument.