import 'dart:math' as math;

void main() {
  // Strings
  String name = 'Tony';
  String surename = 'Stark';

  print('The name is $name $surename');

  // Numbers
  int employees = 10;
  double salary = 1856.25;

  print('employees quantity $employees');
  print('salary $salary');

  // Booleans
  bool? isActive;
  isActive = true;

  if (isActive == null) {
    print('is null');
  } else if (isActive == true) {
    print('is true');
  } else if (isActive == false) {
    print('is false');
  }

  // Lists
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numbers.add(11);

  print(numbers);

  List<int> moreNumbers = List.generate(100, (int index) => 10);
  List<String> names = List.generate(100, (int index) => 'Fran');

  print(moreNumbers);
  print(names);

  // Maps
  Map<String, dynamic> person = {
    'name': 'Fran',
    'age': 26,
    'single': false,
  };

  person.addAll({'pet': 'Simba'});

  print(person);
  print(person['name']);

  // Function calls
  toGreet();
  toGreetSomebody('Fran');
  sendMessage(name: 'Fran', message: 'Keep learning');

  // Class instances
  final thor = Heroe();
  thor.name = 'Thor Odins son';
  thor.power = 'Viking power';
  print(thor);

  final car = Car(brand: 'Ford', engine: '2.3');
  print(car);

  final macBookAir = {
    'processor': 'M1',
    'storage': '500',
    'ram': '8gb',
  };

  final notebook = Computer.fromMap(macBookAir);
  print(notebook);

  final food = Food();
  food.name = 'meatballs';
  food.origin = 'Argentina';
  food.type = 'meat';
  print(food.info);

  final square = Square(5);
  print('area: ${square.calculateArea()}');
  print('side: ${square.side}');
  print('area getter: ${square.area}');

  final dog = Dog();
  animalSound(dog);

  final cat = Cat();
  animalSound(cat);

  final superman = SuperHeroe('Tony Stark');
  print(superman);

  final luthor = Villain('Lex Luthor');
  print(luthor);

  //mixin instances
  final dolphin = Dolphin();
  dolphin.swim('dolphin');

  final bat = Bat();
  bat.fly('bat');
  bat.walk('bat');

  final dove = Dove();
  dove.fly('dove');
  dove.walk('dove');

  final shark = Shark();
  shark.swim('shark');
  
  final flyingFish = FlyingFish();
  flyingFish.fly('flyingFish');
  flyingFish.swim('flyingFish');
}

////////////////////////////////////////////////////////////
// Functions
void toGreet() {
  print('Hello');
}

void toGreetSomebody([String name = '']) {
  print('Hello $name');
}

void sendMessage({required String name, required String message}) {
  print('Receiver: $name Message: $message');
}

void animalSound(Animal animal) {
  animal.emitSound();
}

/////////////////////////////////////////////////////////////////
// Classes
class Heroe {
  String? name;
  String? power;

  @override
  String toString() {
    return 'name: $name, power: $power';
  }
}

class Car {
  String brand;
  String engine;

  Car({required this.brand, required this.engine});

  @override
  String toString() {
    return 'brand: $brand, engine: $engine';
  }
}

class Computer {
  String processor;
  String storage;
  String ram;

//   Computer({
//     required processor,
//     required storage,
//     required ram
//     });

  Computer.fromMap(Map<String, String> object)
      : processor = object['processor'] ?? '',
        storage = object['storage'] ?? '',
        ram = object['ram'] ?? '';

  @override
  String toString() {
    return 'processor: $processor, storage: $storage, ram: $ram';
  }
}

class Food {
//    String _name = '';
//    String _type = '';
//    String _origin = '';
  String name = '';
  String type = '';
  String origin = '';

//   String get name {
//     return _name;
//   }

//   String get type {
//     return _type;
//   }

//   String get origin {
//     return _origin;
//   }

  get info {
    return {
      name,
      type,
      origin,
    };
  }

//   set name(String name) {
//     _name = name;
//   }

//   set type(String type) {
//     _type = type;
//   }

//   set origin(String origin) {
//     _origin = origin;
//   }
}

class Square {
  double side = 0;

  Square(double side) {
    side = side;
  }

  double get area {
    return side * side;
  }

  set area(double value) {
    side = math.sqrt(value);
  }

  double calculateArea() {
    return side * side;
  }
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

// Mixins
abstract class Animals {}

abstract class Mammal extends Animals {}

abstract class Bird extends Animals {}

abstract class Fish extends Animals {}

abstract class Fly {
  void fly(String animal) => print('$animal flying');
}

abstract class Walk {
  void walk(String animal) => print('$animal walking');
}

abstract class Swim {
  void swim(String animal) => print('$animal swimming');
}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Fly, Walk {}

class Dove extends Bird with Walk, Fly {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Fly, Swim {}
