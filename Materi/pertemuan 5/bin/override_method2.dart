// Operator == — Perbandingan Objek
/* Secara bawaan, operator == membandingkan apakah dua variabel menunjuk ke objek yang sama di
memori (bukan apakah nilainya sama). */

// before use override (operator ==)
// class Point {
//   double x, y;

//   Point(this.x, this.y);
// }

// void main(List<String> args) {
//   Point p1 = Point(3, 4);
//   Point p2 = Point(3, 4);

//   print(p1 == p2); // Output : false - dua objek berbeda di memori
// }

// after use override (operator ==)
// Jika kita ingin dua objek dianggap sama ketika nilainya sama, kita harus override operator ==

class Point {
  double x, y;

  Point(this.x, this.y);

  @override
  bool operator ==(Object other) {
    if (other is! Point) return false;
    return x == other.x && y == other.y;
  }

  @override
  String toString() => "Point($x, $y)";
}

void main(List<String> args) {
  Point p1 = Point(3, 4);
  Point p2 = Point(3, 4);
  Point p3 = Point(1, 2);

  print(p1 == p2);
  print(p1 == p3);
}