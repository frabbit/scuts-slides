### Resolution Scopes

There are different scopes where we look for **candidates**,
the order is important, the algorithm is looking in the local
scope first.

1. Call site Scopes
	1. local
	2. member
	3. static
	4. module (static variables of other module types)
	5. module context (import, using)

2. Global Scopes
	1. typeclass and implementation type context
	2. typeclass hierarchy


