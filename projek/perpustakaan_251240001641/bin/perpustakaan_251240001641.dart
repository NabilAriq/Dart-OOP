class Buku {
  String judul = '';
  String penulis =  '';
  String isbn = '';
  int tahunTerbit = 0;
  bool tersedia = true;

  void tampilkanInfo() {
    print("judul        : $judul");
    print("penulis      : $penulis");
    print("isbn         : $isbn");
    print("tahun terbit : $tahunTerbit");
    print("tersedia     : $tersedia");
  }

  void pinjam() {
    if (tersedia){
      tersedia = false;
      print("Buku $judul berhasil dipinjam");
    } else {
      print("Buku $judul sudah dipinjam");
    }
  }
}