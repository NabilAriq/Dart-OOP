class Point{
  final double x;
  final double y;

  // Constant constructor - semua field harus final
  const Point(this.x, this.y);
}

void main(List<String> args) {
  // Membuat objek biasa
  Point p1 = Point(1, 2);
  Point p2 = Point(1, 2);
  print(identical(p1, p2));

  // Membuat objek constant
  const Point cp1 = Point(1, 2);
  const Point cp2 = Point(1, 2);
  print(identical(cp1, cp2));
}