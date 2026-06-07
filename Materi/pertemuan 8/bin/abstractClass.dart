abstract class Animal {
  String name;

  Animal(this.name);

  void breathe() => print("$name sedang bernapas.");

  void makeSound();
}

void main(List<String> args) {
  // Animal a = Animal('Hewan');
}