### Motivation

Allow very powerful abstractions in combination with **higher kinded types** aka. **type constructors**.

`Int`, `String` can be described as concrete types, same counts for `Array<Int>`

But `Array` alone is a **type constructor**, because it requires another type `Array + T => Array<T>` to become concrete.
