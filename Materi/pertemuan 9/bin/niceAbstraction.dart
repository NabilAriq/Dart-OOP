abstract class DatabaseDriver {
  // Kontrak umum — pengguna hanya tahu method ini ada
  void connect(String host, int port);
  void disconnect();
  List<Map<String, dynamic>> query(String sql);
  void execute(String sql);
  bool get isConnected;
}

// Detail implementasi disembunyikan di dalam class ini
class MySQLDriver implements DatabaseDriver {
  bool _connected = false;
  List<Map<String, dynamic>> _tempStorage = [];

  @override
  bool get isConnected => _connected;

  @override
  void connect(String host, int port) {
    // Detail koneksi MySQL tersembunyi di sini
    _connected = true;
    print('[MySQL] Terhubung ke $host:$port');
  }

  @override
  void disconnect() {
    _connected = false;
    print('[MySQL] Koneksi ditutup.');
  }

  @override
  List<Map<String, dynamic>> query(String sql) {
    print('[MySQL] Menjalankan query: $sql');
    return [
      {'id': 1, 'name': 'Ahmad'},
      {'id': 2, 'name': 'Budi'}
    ];
  }

  @override
  void execute(String sql) => print('[MySQL] Execute: $sql');
}

class MongoDBDriver implements DatabaseDriver {
  bool _connected = false;

  @override
  bool get isConnected => _connected;

  @override
  void connect(String host, int port) {
    _connected = true;
    print('[MongoDB] Terhubung ke $host:$port');
  }

  @override
  void disconnect() {
    _connected = false;
    print('[MongoDB] Koneksi ditutup.');
  }

  @override
  List<Map<String, dynamic>> query(String sql) {
    print('[MongoDB] Menjalankan pipeline: $sql');
    return [
      {'_id': 'abc123', 'nama': 'Sari'}
    ];
  }

  @override
  void execute(String sql) => print('[MongoDB] Execute: $sql');
}

// Fungsi pengguna hanya tahu interface DatabaseDriver — tidak peduli implementasinya
void runQuery(DatabaseDriver db, String query) {
  if (!db.isConnected) {
    print('Error: Tidak ada koneksi database!');
    return;
  }
  
  var results = db.query(query);
  print('Ditemukan ${results.length} baris data.');
}

void main() {
  DatabaseDriver db = MySQLDriver();
  db.connect('localhost', 3306);
  runQuery(db, 'SELECT * FROM mahasiswa');
  db.disconnect();

  print('---');

  db = MongoDBDriver();
  db.connect('localhost', 27017);
  runQuery(db, '{find: "mahasiswa"}');
  db.disconnect();
}