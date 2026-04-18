/* Getter adalah fungsi yang bertingkah seperti sebuah field saat dibaca — tanpa tanda kurung () — namun
 sebenarnya adalah fungsi yang bisa mengandung logika.*/

class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  // Getter read-only - tidak ada setternya
  double get width => _width;
  double get height => _height;

  // Getter yang menghitung nilai turunan (tidak butuh field tersendiri)
  double get area => _width * _height;
  double get perimeter => 2 * (_width + _height);
  double get diagonal => (_width * _width + _height * _height);
}

void main(List<String> args) {
  Rectangle rect = Rectangle(8, 6);

  // Dibaca seperti field biasa
  print(rect.height);
  print(rect.height);
  print(rect.area);
  print(rect.perimeter);
}