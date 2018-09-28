### Translation

Filter

```haskell
data List a = Cons a | Nil

filter :: forall a . Eq a => List a -> a -> List a
filter Nil _ = Nil
filter (Cons h tail) b = 
  let t = filter tail b in
  if not (eq h b) then Cons h t else t
```

```haxe
enum List<A> { 
  Cons(a:A, tail:List<A>); 
  Nil; 
}

function filter <A>(a:List<A>, b:A, E:Eq<A>) {
  return switch [a, b] {
    case [Nil, _]: Nil;
    case [Cons(h, tail), b]: 
      var t = filter(tail, b);
      if (!E.eq(h, b)) Cons(h, t) else t;
  }
}
```