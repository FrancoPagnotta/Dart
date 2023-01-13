void main() {
  
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