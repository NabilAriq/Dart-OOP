class Rectangle{
  double width = 0;
  double height = 0;

  // Method biasa
  double calculateArea(){
    return width * height;
  }

  // Method yang sama dengan expression body (lebih singkat)
  double calculatePerimeter() => 2 * (width + height);

  void describe() => print("Persegi panjang $width x $height, Luas : ${calculateArea()}");
}

void main(List<String> args) {
  Rectangle rect = Rectangle();
  rect.width = 8;
  rect.height = 5;

  print(rect.calculateArea());
  print(rect.calculatePerimeter());
  rect.describe();
}