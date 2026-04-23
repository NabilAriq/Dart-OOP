/* Method Overriding adalah mendefinisikan ulang method dari parent class di child class dengan perilaku yang
berbeda. Gunakan @override. */

class Shape {
  String color;
  
  Shape(this.color);

  double calculateArea() => 0;

  void describe(){
    print("Bentuk $color, Luas = ${calculateArea().toStringAsFixed(2)} cm");
  }
}

class Circle extends Shape {
  double radius;
  Circle(String color, this.radius) : super(color);

  @override
  double calculateArea() => 3.14159 * radius * radius;
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(String color, this.width, this.height) : super(color);

  @override
  double calculateArea() => width * height;
}

class Triangle extends Shape {
  double base, height;
  Triangle(String color, this.base, this.height) : super(color);

  @override
  double calculateArea() => 0.5 * base * height;
}

void main(List<String> args) {
  List<Shape> shapes = [
    Circle("Merah", 7),
    Rectangle("Biru", 8, 5),
    Triangle("Hijau", 6, 4),
  ];

  for (var s in shapes){
    s.describe();
  }
}