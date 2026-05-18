class Matrix {
  List<List<double>> _data;

  Matrix(int rows, int cols)
      : _data = List.generate(rows, (_) => List.filled(cols, 0));

  // Operator [] : mengakses baris
  List<double> operator [](int index) => _data[index];

  // Operator []= : mengisi nilai
  void operator []=(int index, List<double> values) {
    _data[index] = values;
  }

  @override
  String toString() => _data.map((row) => row.toString()).join('\n');
}

void main(List<String> args) {
  Matrix m = Matrix(2, 3);
  m[0] = [1, 2, 3];
  m[1] = [4, 5, 6];
  
  print(m[0]);
  print(m);
}