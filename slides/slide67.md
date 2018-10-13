### Motivation

Array or Option are type constructors with exactly one type parameter:

`Array<_> = T -> Array<T>`
`Option<_> = T -> Option<T>`

Either in contrast has two parameters:
`Either<_,_> = L -> R -> Either<L,R>`

By partial application of the first type it becomes a type constructor with one parameter:
`Either<L,_> = R -> Either<L,R>`