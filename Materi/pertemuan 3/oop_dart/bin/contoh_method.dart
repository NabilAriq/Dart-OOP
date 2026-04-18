class Mahasiswa{
  String nama = "";
  String nim = "";
  double nilaiUts = 0;
  double nilaiUas = 0;
  double nilaiTugas = 0;

  double hitungNilaiAkhir(){
    return (nilaiUts * 0.3) + (nilaiUas * 0.4) + (nilaiTugas * 0.3);
  }

  String getStatus(){
    double nilaiAkhir = hitungNilaiAkhir();
    if (nilaiAkhir >= 85){
      return "A";
    } else if (nilaiAkhir >= 75){
      return "B";
    } else if (nilaiAkhir >= 65){
      return "C";
    } else if (nilaiAkhir >= 55){
      return "D";
    } else {
      return "E (Tidak Lulus)";
    }
  }

  void cetakLaporan(){
    print("="*50);
    print("NIM  : $nim");
    print("Nama : $nama");
    print("UTS  : $nilaiUts | UAS : $nilaiUas | Tugas : $nilaiTugas");
    print("Nilai Akhir : ${hitungNilaiAkhir()}");
    print("Grade       : ${getStatus()}");
    print("="*50);
  }
}

void main(List<String> args) {
  Mahasiswa mhs1 = Mahasiswa();
  mhs1.nama = "Ahmad Fauzi";
  mhs1.nim = "20210001";
  mhs1.nilaiUts = 80;
  mhs1.nilaiUas = 88;
  mhs1.nilaiTugas = 90;

  Mahasiswa mhs2 = Mahasiswa();
  mhs2.nama = "Dewi Kusuma";
  mhs2.nim = "20210002";
  mhs2.nilaiUts = 60;
  mhs2.nilaiUas = 55;
  mhs2.nilaiTugas = 70;

  mhs1.cetakLaporan();
  mhs2.cetakLaporan();
}