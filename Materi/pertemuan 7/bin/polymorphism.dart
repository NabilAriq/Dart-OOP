abstract class Animal {
  String name;
  
  Animal(this.name);

  void makeSound();
}

class Cat extends Animal{
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name: Meong~');
  }
}

class Dog extends Animal{
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name: Guk guk!');
  }
}

class Duck extends Animal {
  Duck(String name) : super(name);

  @override
  void makeSound() {
    print('$name: Kwak kwak!');
  }
}

// Upcasting 
void main(List<String> args) {
  Animal mypet = Dog("Buddy");
  mypet.makeSound();

  List<Animal> animals = [Cat("Kitty"), Dog("Rex"), Duck("Donald"), Cat("Whiskers"), Dog("Bolt")];

// Dynamic Dispatch
  for (var animal in animals) {
    animal.makeSound();
  }
}
