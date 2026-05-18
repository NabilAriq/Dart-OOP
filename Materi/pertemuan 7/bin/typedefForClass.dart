class DatabaseConnection {
  String host;
  int port;

  DatabaseConnection(this.host, this.port);
}

typedef DbConn = DatabaseConnection;

void main(List<String> args) {
  DbConn conn = DbConn("localhost", 3306);
  print("${conn.host}:${conn.port}");
}