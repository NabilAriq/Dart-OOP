// hashCode — Representasi Integer Objek
/* hashCode adalah representasi integer dari sebuah objek. Ini digunakan oleh struktur data seperti HashMap
 dan HashSet untuk mengelola data secara efisien. */
// Kontrak penting: jika dua objek dianggap sama oleh operator ==, maka hashCode keduanya harus sama.
// Ketika kita men-override operator ==, kita wajib juga men-override hashCode.

class Point {
  double x, y;
  
  Point(this.x, this.y);

  @override
  bool operator ==(Object other) {
    if (other is! Point) return false;
    return x == other.x && y == other.y;
  } 

  @override
  int get hashCode => Object.hash(x, y); // dart menyediakan helper Object.hash()

  @override
  String toString() => "Point ($x, $y)";
  
}

void main(List<String> args) {
  Point p1 = Point(3, 4);
  Point p2 = Point(3, 4);

  print(p1 == p2);
  print(p1.hashCode == p2.hashCode);

  Set<Point> pointSet = {p1, p2, Point(1,2)};
  print(pointSet.length);
}