abstract class Shape {
  String color;

  Shape(this.color);

  double calculateArea();
  double calculatePerimeter();

  void describe(){
    print("Bentuk berwarna $color");
    print(" Luas  : ${calculateArea()}");
    print(" Keliling  : ${calculatePerimeter()}");
  }
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius) : super(color);

  @override
  double calculateArea() => 3.14153 * radius * radius;

  @override
  double calculatePerimeter() => 2 * 3.14153 * radius;
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(String color, this.width, this.height) : super(color);

  @override
  double calculateArea() => width * height;

  @override
  double calculatePerimeter() => 2 * (width + height);
}

class Triangle extends Shape {
  double a, b, c;

  Triangle(String color, this.a, this.b, this.c) : super(color);

  @override
  double calculateArea() {
    double s = (a + b + c) / 2;
    return (s * (s - a) * (s - b) * (s - c));
  }

  @override
  double calculatePerimeter() => a + b + c;
}

void main(List<String> args) {
  List<Shape> shapes = [
    Circle("Merah", 7.0),
    Rectangle("Biru", 8.0, 5.0),
    Triangle("Hijau", 3.0, 4.0, 5.0),
  ];

  for (var shape in shapes) {
    shape.describe();
    print("");
  }
}
