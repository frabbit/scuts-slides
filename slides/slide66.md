### Motivation

In some cases we need to refer to `Array` as a type constructor.

In those cases not applied type parameters are replaced with an underscore like `Array<_>`.

The underscore is a new special syntax, it just describes the absence of a type.

This is required to stay compatible with haxe syntax, because polymorphic types in Haxe always expect type parameters.

To get the analogy for functions, think about `f.bind(_)` as being the equivalent to `f` for a function like `f = x -> x + 1`. 

Now we can write the following:

```haxe
interface Iter<F> {
	function iterate <A>(fa:F<A>, f:A -> Void):Void;
}
// we can't say Iter<Array> here (compiler error)
class IterArray implements Iter<Array<_>> {
	function iterate <A>(fa:Array<A>, f:A -> Void):Void;
}
```