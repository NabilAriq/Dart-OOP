
void main(List<String> args) {
  // null check (memeriksa null sebelum mengakses)
  String? nama = null;

  if (nama != null){
    print(nama.length);
  }

  // Default value dengan operator ?? (?? memberikan nilai pengganti jika var bernilai null) 
  String? username;
  String tampil = username ?? "tamu";
  print(tampil);

  // Konversi pakasa dengan ! (memaksa konversi dari tipe null ke non null)
  String? kode = "12345";
  String pasti = kode!;
  print(pasti);
}