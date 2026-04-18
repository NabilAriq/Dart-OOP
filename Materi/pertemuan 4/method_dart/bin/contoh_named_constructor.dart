class Color{
  int red = 0;
  int green = 0;
  int blue = 0;

  Color(this.red, this.green, this.blue);

  Color.red() :
  red = 255,
  green = 0,
  blue = 0;

  Color.green() :
  red = 0,
  green = 255,
  blue = 0;

  Color.blue() :
  red = 0,
  green = 0,
  blue = 255;

  Color.white() :
  red = 255,
  green = 255,
  blue = 255;

  Color.black() :
  red = 0,
  green = 0,
  blue = 0;

  void printColor(){
    print("RGB : ($red, $green, $blue)");
  }
}

void main(List<String> args) {
  Color custom = Color(128, 64, 200);
  Color merah = Color.red();
  Color putih = Color.white();
  Color hitam = Color.black();

  custom.printColor();
  merah.printColor();
  putih.printColor();
  hitam.printColor();
}