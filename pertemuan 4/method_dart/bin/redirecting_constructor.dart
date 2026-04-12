class Rectangle{
  double width = 0;
  double height = 0;

  // constructor utama
  Rectangle(this.width, this.height);

  // Redirecting constructor Persegi (lebar = tinggi)
  // Memanggil constructor utama dengan nilai yang sama
  Rectangle.square(double size) : this(size, size);

  double calculateArea() => width * height;
}

void main(List<String> args) {
  Rectangle rect = Rectangle(8, 5);
  Rectangle square = Rectangle.square(4);

  print(rect.calculateArea());
  print(square.calculateArea());
  print(square.width);
  print(square.height);
}