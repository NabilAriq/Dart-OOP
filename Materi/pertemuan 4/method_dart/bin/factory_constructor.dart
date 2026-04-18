class DatabaseConnection{
  static DatabaseConnection? _instance; // Menyimpan satu satunya instance

  String serverAddress;

  // Constructor private - tidak bisa diakses dari luar
  DatabaseConnection._internal(this.serverAddress);

  // Factory constructor - hanya membuat objek baru jika belum ada
  factory DatabaseConnection(String address){
    _instance ??= DatabaseConnection._internal(address);
    return _instance!;
  }
}

void main(List<String> args) {
  DatabaseConnection db1 = DatabaseConnection("192.168.1.1");
  DatabaseConnection db2 = DatabaseConnection("192.168.1.1");

  // Meskipun dipanggil 2 kali, keduanya merujuk ke objek yang sama
  print(identical(db1, db2));
  print(db1.serverAddress);
}