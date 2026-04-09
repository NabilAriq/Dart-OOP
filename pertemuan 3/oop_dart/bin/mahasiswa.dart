class Mahasiswa {
  String nama = "";
  String nim = "";
  String jurusan = "";
  double ipk = 0.0;
}

void main(List<String> args) {
  Mahasiswa mhs1 = Mahasiswa();
  mhs1.nama = "Ahmad Fauzi";
  mhs1.nim = "20210001";
  mhs1.jurusan = "Teknik Informatika";
  mhs1.ipk = 3.75;

  Mahasiswa mhs2 = Mahasiswa();
  mhs2.nama = "Dewi Kusuma";
  mhs2.nim = "20210002";
  mhs2.jurusan = "Sistem Informasi";
  mhs2.ipk = 3.50;

  Mahasiswa mhs3 = Mahasiswa();
  mhs3.nama = "Rizky Pratama";
  mhs3.nim = "20210003";
  mhs3.jurusan = "Teknik Informatika";
  mhs3.ipk = 2.85;

  print("=== DATA MAHASISWA ===");
  print("Nama   : ${mhs1.nama}   | NIM : ${mhs1.nim} | IPK : ${mhs1.ipk}");
  print("Nama   : ${mhs2.nama}   | NIM : ${mhs2.nim} | IPK : ${mhs2.ipk}");
  print("Nama   : ${mhs3.nama} | NIM : ${mhs3.nim} | IPK : ${mhs3.ipk}");
}