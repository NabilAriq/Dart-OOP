// Setter digunakan untuk mengubah nilai field dengan kemungkinan menambahkan validasi.

class Student {
  String name;
  double _gpa;
  int _semester;

  Student(this.name, this._gpa, this._semester);

  // Getter
  double get gpa => _gpa;
  int get semester => _semester;

  // Setter dengan validasi
  set gpa(double value) {
    if (value < 0.0 || value > 4.0){
      print("Error : IPK harus antara 0.0 dan 4.0!");
    } else {
      _gpa = value;
    }
  }

  set semester(int value){
    if (value < 1 || value > 14){
      print("Error : Semester harus antara 1 dan 14!");
    } else {
      _semester = value;
    }
  }
}

void main(List<String> args) {
  Student budi = Student("Budi", 3.5, 4);

  print(budi.gpa);
  budi.gpa = 3.8;
  budi.gpa = 5.0;
  print(budi.gpa);

  budi.semester = 5;
  budi.semester = 20;
}