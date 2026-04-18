// Jika isi getter atau setter hanya satu ekspresi, bisa dipersingkat dengan => (Tanpa Validasi)

class Temperature {
  double _celsius;
  Temperature(this._celsius);

  // Getter expression body
  double get celsius => _celsius;

  // Setter expression body 
  set celsius(double value) => _celsius = value;

  double get fahrenheit => (_celsius * 9 / 5) + 32;
  double get kelvin => _celsius + 273.15;
}

void main(List<String> args) {
  Temperature t = Temperature(100);
  print(t.celsius);
  print(t.fahrenheit);
  print(t.kelvin);

  t.celsius = 0;
  print(t.fahrenheit);
}