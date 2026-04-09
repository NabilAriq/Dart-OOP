class Person{
  String name = "";
  int age = 0;

  // Method tanpa return value (void)
  void sayHello(){
    print("Halo! Nama Saya $name.");
  }

  // Method dengan return Value
  String getInfo(){
    return "Nama : $name, Umur : $age tahun";
  }

  void greet(String otherName){
    print("Halo, $otherName! Saya $name");
  }
}

void main(List<String> args) {
  Person budi = Person();
  budi.name = "budi";
  budi.age = 25;

  budi.sayHello();
  print(budi.getInfo());
  budi.greet("Sari");
}