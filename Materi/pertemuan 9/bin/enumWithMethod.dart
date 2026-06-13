enum HttpStatus {
  ok(200, "OK"),
  created(201, "Created"),
  badRequest(400, "Bad Request"),
  unauthorized(401, "Unauthorized"),
  forbidden(403, "Forbidden"),
  notFound(404, "Not Found"),
  internalServerError(500, "Internal Server Error");

  final int code;
  final String message;

  const HttpStatus(this.code, this.message);

  bool get isSuccess => code >= 200 && code < 300;
  bool get isClientError => code >= 400 && code < 500;
  bool get isServerError => code >= 500;

  String get description => "$code $message";

  @override
  String toString() => description;
}

void handleResponse(HttpStatus status) {
  if (status.isSuccess) {
    print('✅ Berhasil: ${status.description}');
  } else if (status.isClientError) {
    print('⚠ Kesalahan Client: ${status.description}');
  } else if (status.isServerError) {
    print('❌ Kesalahan Server: ${status.description}');
  }
}

void main() {
  handleResponse(HttpStatus.ok);
  handleResponse(HttpStatus.notFound);
  handleResponse(HttpStatus.internalServerError);

  print(HttpStatus.created.code);
  print(HttpStatus.ok.isSuccess);
}


