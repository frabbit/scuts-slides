### Limitations

#### Return type polymorphism.

```haxe
interface Create<F>
{
	public function create <A>():F<A>;
}

class CreateApi {
	public static function create <F,A>(?C:Implicit<Create<F>>):F<A> return C.create();
}
```

The following does not work, because the type of the implicit parameter depends on the return type and not 
on the leading function parameters types.

```haxe
var x : Array<Int> = CreateApi.create();
```
