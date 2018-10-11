### Motivation

Type classes are modular.

Consider this oop code im comparison, you need to implement **Eq** and **Clone** at the same time when defininig the Person class.

```haxe
class Person implements Eq<Person> implements Clone<Person> { 
  // ...
}
```
