### Motivation

Type classes are modular.

Consider this oop code, you need to implement **Eq** and **Clone** when defininig the Person class.

```haxe
class Person implements Eq<Person> implements Clone<Person> { 
  // ...
}
```
