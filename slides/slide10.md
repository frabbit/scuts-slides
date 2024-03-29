### Motivation

Separation of data and interface.

Data:

```haxe
class Person {
  public var name : String;
  public var age : Int;
}
```

Interface (Type Class):

```haxe
interface Eq<A> {
  function eq (a1:A, a2:A):Bool;
}
```

Implementation of a type class, also called instance of a type class. 
The name **EqPerson** here is more a convention than a requirement.

```haxe
class EqPerson implements Eq<Person> {
  function eq (a1:Person, a2:Person) {
    return a1.name == a2.name && a1.age == a2.age;
  }
}
```