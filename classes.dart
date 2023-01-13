void main() {

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
