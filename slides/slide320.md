### Limitations

#### Return type polymorphism.

Or the api has to be changed

```haxe
class CreateApi {
	public static function create <F,A>(_:TypeArg<F>, ?C:Implicit<Create<F>>):F<A> return C.create();
}
```

Where `TypeArg` is a placeholder abstract with a from macro.

It can be used like this:

```haxe
create('Array<_>')
```