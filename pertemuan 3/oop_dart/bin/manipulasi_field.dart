class Person{
  String name = "";
  int age = 0;
  String? email;
}

void main(List<String> args) {
  Person budi = Person();
  Person sari = Person();

  // budi's field
  budi.name = "budi";
  budi.age = 19;
  budi.email = "budi@gmail.com";

  // Sari's field
  sari.name = "Sari";
  sari.age = 21;

  print(budi.name);
  print(budi.age);
  print(budi.email);

  print(sari.name);
  print(sari.age);
  print(sari.email);

  // modif nilai field / atribut
  budi.age = 25;
  print(budi.age);
  print(sari.age);
}