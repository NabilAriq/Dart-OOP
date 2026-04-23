class Animal {
  String name;

  Animal(this.name);

  void describe() {
    print("Saya hewan bernama $name");
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void describe() {
    // TODO: implement describe
    super.describe();
    print("Ras saya : $breed");
  }
}

void main(List<String> args) {
  Dog d = Dog("Fardin", "Siberian Husky");
  d.describe();
}