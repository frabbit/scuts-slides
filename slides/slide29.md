### Higher Kinded Types

Another feature currently implemented in a haxe branch of mine is Higher Kinded Types.

In combination with typeclasses it allows defining Functors, Monads etc.

```haxe
interface Functor<F>
{
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
