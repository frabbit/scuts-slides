### Resolution Scopes

There are different scopes where we look for **candidates**.
The order is important, because the first scope wins atm. 
The algorithm is looking in the local scope first and moves step by step to the global scope.

1. Call site scopes
	1. local
	2. member
	3. static
	4. module (statics of other types in the same module)
	5. module context (import, using)

2. Global Scopes
	1. typeclass and implementation type context
	2. typeclass hierarchy


