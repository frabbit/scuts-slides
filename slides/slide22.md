### Motivation

Type classes are modular.

You implement them piece by piece.

```haxe
@:structInit class Person { 
  public var name: String 
}
```

```haxe
interface Eq<A> {
  function eq (a1:A, a2:A):Bool;
}
class EqPerson implements Eq<Person> {
  function eq (a1:Person, a2:Person) return a1.name == a2.name;
}
```
```haxe
interface Clone<A> {
  function clone (a:A):A;
}
class ClonePerson implements Clone<Person> {
  function clone (x:Person):Person return { name: x.name };
}
```
