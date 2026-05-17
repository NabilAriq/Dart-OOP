class Vector2 {
  double x, y;
  Vector2(this.x, this.y);
  // Operator + : penjumlahan dua vektor
  Vector2 operator +(Vector2 other) => Vector2(x + other.x, y + other.y);
  // Operator - : pengurangan dua vektor
  Vector2 operator -(Vector2 other) => Vector2(x - other.x, y - other.y);
  // Operator * : perkalian vektor dengan skalar
  Vector2 operator *(double scalar) => Vector2(x * scalar, y * scalar);
  // Operator == : perbandingan nilai
  @override
  bool operator ==(Object other) {
  if (other is! Vector2) return false;
  return x == other.x && y == other.y;
  }

  @override
  int get hashCode => Object.hash(x, y);
  
  @override
  String toString() => 'Vector2($x, $y)';
}
void main() {
  Vector2 v1 = Vector2(3.0, 4.0);
  Vector2 v2 = Vector2(1.0, 2.0);
  print(v1 + v2); // Output: Vector2(4.0, 6.0)
  
  print(v1 - v2); // Output: Vector2(2.0, 2.0)
  print(v1 * 2); // Output: Vector2(6.0, 8.0)
  print(v1 == Vector2(3.0, 4.0)); // Output: true
}