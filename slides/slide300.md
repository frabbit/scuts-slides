### Limitations

#### Return type polymorphism.

```haxe
interface Create<F>
{
	public function createEmpty <A>():F<A>;
}

class CreateApi {
	public static function createEmpty <F,A>(?C:Implicit<Create<F>>):F<A> {
		return C.createEmpty();
	}
}
```

The following code does not work, because the type of the implicit parameter depends on the return type and not 
on the leading function parameter types.

```haxe
var x : Array<Int> = CreateApi.createEmpty();
```
