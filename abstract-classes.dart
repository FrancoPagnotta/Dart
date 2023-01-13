void main() {
  
  final dog = Dog();
  animalSound(dog);

  final cat = Cat();
  animalSound(cat);

  final superman = SuperHeroe('Tony Stark');
  print(superman);

  final luthor = Villain('Lex Luthor');
  print(luthor);
}

abstract class Animal {
  int? legs;

  Animal();

  void emitSound();
}

class Dog implements Animal {
  @override
  int? legs;

  @override
  void emitSound() {
    print('wow');
  }
}

class Cat implements Animal {
  @override
  int? legs;
  int? tail;

  @override
  void emitSound() {
    print('miau');
  }
}

abstract class Character {
  String? power;
  String name;

  Character(this.name);

  @override
  String toString() {
    return '$name - $power';
  }
}

class SuperHeroe extends Character {
  int courage = 100;

  SuperHeroe(String name) : super(name);
}

class Villain extends Character {
  int evil = 100;

  Villain(String name) : super(name);
}

void animalSound(Animal animal) {
  animal.emitSound();
}