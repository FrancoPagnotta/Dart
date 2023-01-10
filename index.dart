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

  // Classes
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
}

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
