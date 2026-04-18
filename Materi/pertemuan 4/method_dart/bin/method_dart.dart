class Person {
  String name = "";
  int age = 0;
  String city = "";

  Person(String name, int age, String city){
    this.name = name;
    this.age = age;
    this.city = city;
  }

  void introduce(){
    print("Halo! Saya $name, $age Tahun, dari $city ");
  }
}

void main(List<String> args) {
  Person p1 = Person("Budi", 25, "Jakarta");
  Person p2 = Person("Sari", 22, "Bandung");
  Person p3 = Person("Eko", 30, "Surabaya");

  p1.introduce();
  p2.introduce();
  p3.introduce();
}