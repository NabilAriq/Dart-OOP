class Animal {
  String sound = "suara tidak diketahui";

  void makeSound() => print("Hewan ini bersuara : $sound");
}

class Cat extends Animal {
  @override
  // TODO: implement sound
  String sound = "Guk guk";
}

class Dog extends Animal {
  @override
  // TODO: implement sound
  String sound = "Guk guk";
}

void main(List<String> args) {
  Cat().makeSound();
  Dog().makeSound();
}