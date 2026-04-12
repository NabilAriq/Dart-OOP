class Rectangle{
  final double width;
  final double height;
  final double area;

  // Menggunakan Initializer List untuk mengisi "area"
  Rectangle(this.width, this.height) : area = width * height;

  void describe(){
    print("Lebar : $width | Tinggi : $height | Luas : $area");
  }
}

void main(List<String> args) {
  Rectangle r = Rectangle(6, 4);

  r.describe();
}