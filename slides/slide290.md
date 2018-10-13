### Functor, Monad etc.

Higher kinded types in combination with typeclasses allow defining Functors, Monads etc.

Monad Transformers etc. are also working.

```haxe
interface Functor<F> {
	public function map<A,B>(x:F<A>, f:A->B):F<B>;
}
```
implementation for Array

```haxe
class FunctorArray<R> implements Functor<Array<_>> implements ImplicitInstance {
	public inline function map <A,B>(a:Array<A>, f:A->B):Array<B> {
		return a.map(f);
	}
}
```
