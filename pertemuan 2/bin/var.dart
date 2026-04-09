void main(List<String> args) {
  // explicitly variable (stirong, int, bool dll)
  String nama = "nabil";
  print(nama);

  int umur = 19;
  print(umur);

  bool lulus = true;
  print(lulus);

  bool aktif = false;
  print(aktif);

  // implicitly variable (var)
  var name = "nabil";
  var old = 19;
  print(name);
  print(old);
  
  // special variable
  final thisTime = DateTime.now(); // var final nilainya tetap tidak bisa diubah (nilainya dibaca saat program berjalan (runtime))
  print(thisTime);

  const double phi = 3.14159; // var constanta nilainya tetap tidak bisa diubah (nilainya dibaca saat tahap compile (compile-time))
  print(phi);

  late String message; // var late memungkinkan dideklarasi tanpa langsung mengisi nilanya
  message = "hi";
  print(message);

  // var Dynamic memungkinkan nilainya tipe apapun dan bisa diubah kapanpun
  dynamic data = "ini String"; // String 
  print(data);
  data = 100; // jadi int
  print(data); 
  data = false; // jadi bool
  print(data);

  // Konfersi tipe data
  // String ke int
  int angka = int.parse("100");
  print(angka + 5);

  // String ke double
  double desimal = double.parse("3.14");
  print(desimal);

  // int ke String
  String teks = angka.toString();
  print(teks);

  // double ke int
  int bulat = desimal.toInt();
  print(bulat);
}