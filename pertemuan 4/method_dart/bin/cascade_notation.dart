class Person {
  String name = "";
  int age = 0;
  String city = "";
  
  void introduce(){
    print("Halo1 Saya $name, $age tahun, dari $city");
  }
}

void main(List<String> args) {
  // Tanpa Cascade Notation
  Person p1 = Person();
  p1.name = "Budi";
  p1.age = 25;
  p1.city = "Jakarta";
  p1.introduce();

  // Menggunakan cascade notation (..) - lebih ringkas
  Person p2 = Person()
  ..name = "Sari"
  ..age = 22
  ..city = "Jakarta"
  ..introduce();

  Person? p3;
  p3?..name = "Eko";
}