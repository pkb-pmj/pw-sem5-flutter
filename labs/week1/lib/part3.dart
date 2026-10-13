void part3() {
  print('\n=== Part 3: OOP ===');

  final animals = [
    Dog('Rex', age: 3, color: 'brown'),
    Cat('Mr. Clinton', age: 15, color: 'white'),
    Cow('Betsy', age: 5, weight: 500),
  ];

  for (final animal in animals) {
    print(animal.description);
    animal.makeSound();

    switch (animal) {
      case Dog():
        print(
          'Dog("${animal.name}", age: ${animal.age}, color: ${animal.color})',
        );
      case Cat():
        print(
          'Cat("${animal.name}", age: ${animal.age}, color: ${animal.color})',
        );
      case Cow():
        print(
          'Cow("${animal.name}", age: ${animal.age}, weight: ${animal.weight})',
        );
    }
  }
}

sealed class Animal(final String name, {required final int age}) {
  String get description => 'name: $name, age: $age';
  void makeSound();
}

class Dog(super.name, {required super.age, required final String color})
    extends Animal {
  @override
  String get description => '${super.description}, color: $color';

  @override
  void makeSound() {
    print('woof');
  }
}

class Cat(super.name, {required super.age, required final String color})
    extends Animal {
  @override
  String get description => '${super.description}, color: $color';

  @override
  void makeSound() {
    print('meow');
  }
}

class Cow(super.name, {required super.age, required final int weight})
    extends Animal {
  @override
  String get description => '${super.description}, weight: $weight';

  @override
  void makeSound() {
    print('moo');
  }
}
