### Motivation

Type classes are modular.

Consider this oop code:

```haxe
class Person implements Eq<Person> implements Clone<Person> { 
  // ...
}
```

It's required to implement **Eq** and **Clone** at the same time when defininig the Person class.
