class Person{
  String name = "";
  int age = 0;
  String city = "";

  // Initializing Formal Parameter - Cara Singkat dan bersih
  Person(this.name, this.age, this.city);
}

// dengan field nullable
class Student{
  String name = "";
  String nim = "";
  String? email;

  Student(this.name, this.nim, [this.email]);
}

void main(List<String> args) {
  Person budi = Person("Budi", 25, "Jakarta");
  Student s1 = Student("Ahmad", "20210001", "ahmad@gmail.com");
  Student s2 = Student("Dewi", "20210002");

  print(budi.name);
  print(budi.age);
  print(budi.city);

  print(s1.email);
  print(s2.email);
}

