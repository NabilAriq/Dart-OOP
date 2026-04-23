class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() => print("$name sedang makan.");
  void breathe() => print("$name sedang bernafas.");
  void sleep() => print("$name sedang tidur");
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  void bark() => print("$name : Guk guk!");
}

class Cat extends Animal {
  bool isIndoor;

  Cat(String name, int age, this.isIndoor) : super(name, age);

  void meow() => print("$name : Meong~");

  void status(){
    String tipe = isIndoor ? "kucing di dalam ruangan" : "kucing luar ruangan";
    print("$name adalah $tipe.");
  }
}

void main(List<String> args) {
  Dog rex = Dog("Rex", 3, "Labrador");
  rex.eat();
  rex.breathe();
  rex.bark();

  Cat kitty = Cat("Kitty", 2, true);
  kitty.eat();
  kitty.meow();
  kitty.status();
}