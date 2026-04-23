extension ExtensionOnString on String {
  // Mengubah huruf pertama setiap kata menjadi kapital
  String toTitleCase(){
    return split(" ").map((word) => word.isEmpty ? "" : word[0].toUpperCase() + word.substring(1).toLowerCase()).join("");
  }

  // mengecek apakah String berisi hanya angka
  bool get isNumeric => double.tryParse(this) != null;

  // Membalik isi String
  String get reversed => split("").reversed.join("");
}

void main(List<String> args) {
  String nama = "Budi Santoso";
  print(nama.toTitleCase());
  print("123.5".isNumeric);
  print("abc".isNumeric);
  print("Dart".reversed);
}