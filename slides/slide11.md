### Motivation

Roughly the same concept in OOP.

```haxe
interface Eq<A> {
  function eq (a2:A):Bool;
}
```

```haxe
class Person implements Eq<Person> {
  public var name:String;
  public var age:Int;
  public function eq (other:Person):Bool {
    return this.name == other.name && this.age == other.age;
  }
}
```