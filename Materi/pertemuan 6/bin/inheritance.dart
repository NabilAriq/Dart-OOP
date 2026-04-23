/*Inheritance (Pewarisan) adalah kemampuan sebuah class untuk mewarisi semua field dan method dari class
lain, sehingga kita tidak perlu menulis kode yang sama berulang kali.*/
// Parent Class (Superclass): Class yang memberikan warisan.
// Child Class (Subclass): Class yang menerima warisan.
// Di Dart: child class hanya bisa memiliki satu parent class (single inheritance).

class Employee {
  String name;
  String employeeId;
  double salary;

  Employee(this.name, this.employeeId, this.salary);

  void introduce() => print("Halo, Saya $name");
  void clockIn() => print("$name absen masuk.");

  }
  
class Teacher extends Employee {
  String subject;

  Teacher(String n, String id, double s, this.subject) : super(n, id, s);
  void teach() => print("$name mengajar $subject");
}

class Staff extends Employee {
  String department;
  Staff(String n, String id, double s, this.department) : super(n, id, s);
  void handleAdmin() => print("$name menangani admin $department");
}