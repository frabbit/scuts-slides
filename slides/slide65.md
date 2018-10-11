### Motivation

Very powerful in combination with **higher kinded types** aka. **type constructors**.

`Array` is a **type constructor**, because it requires another type `Array + T => Array<T>`.

Think about `Array` as function that requires another type as a parameter `Array = T -> Array<T>`

Instead of using `Array` without parameters we mark missing types with an underscore like `Array<_>`, to stay compatible with haxe syntax.

Array or Option are types with one type parameter:

`Array<_> = T -> Array<T>`
`Option<_> = T -> Option<T>`

Either has two parameters:
`Either<_,_> = L -> R -> Either<L,R>`

but with partial application of the first type it can become a type constructor with one parameter:
`Either<L,_> = R -> Either<L,R>`