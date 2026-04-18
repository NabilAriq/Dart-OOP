void main(List<String> args) {
  // operator aritmatika 
  int a = 5;
  int b = 10;

  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b); // pembagian (hasil double)
  print(a ~/ b); // pembagian bulat (hasil int)
  print(a % b);

  // operator perbandingan
  int nilai = 75;

  print(nilai == 75);
  print(nilai > 75);
  print(nilai != 75);

  // operator penugasan
  int stok = 100;
  stok -= 10;
  print(stok);

  stok++;
  print(stok);
  stok--;
  print(stok);

  // operator logika 
  bool sudahLogin = true;
  bool punyaIzin = false;

  // AND : keduanya harus true
  print(sudahLogin && punyaIzin);

  // OR : cukup salah satu true
  print(sudahLogin || punyaIzin);

  // NOT : kebalikan
  print(!sudahLogin);
}