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
}

// Functions
void toGreet() {
  print('Hello');
}

void toGreetSomebody([ String name = '' ]) {
  print('Hello $name');
}

void sendMessage({ 
  required String name, 
  required String message 
  }) {
  print('Receiver: $name Message: $message');
}
