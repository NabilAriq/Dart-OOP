class Point{
  double x = 0;
  double y = 0;

  // Constructor utama
  Point(this.x, this.y);

  // Named constructor : membuat titik di posisi asal (0, 0)
  Point.origin():
    x = 0,
    y = 0;

  // Named constructor : membuat titik dari satu nilai (sumbu x saja)
  Point.onXAxis(double x) :
    this.x = x,
    y = 0;

  void printPosition(){
    print("Posisi : ($x, $y)");
  }
}

void main(List<String> args) {
  Point p1 = Point(3, 4);
  Point p2 = Point.origin();
  Point p3 = Point.onXAxis(5);

  p1.printPosition();
  p2.printPosition();
  p3.printPosition();
}