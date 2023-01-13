void main() {
  
  toGreet();
  toGreetSomebody('Fran');
  sendMessage(name: 'Fran', message: 'Keep learning');
}

void toGreet() {
  print('Hello');
}

void toGreetSomebody([String name = '']) {
  print('Hello $name');
}

void sendMessage({required String name, required String message}) {
  print('Receiver: $name Message: $message');
}