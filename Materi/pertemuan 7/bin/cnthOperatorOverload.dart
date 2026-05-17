class Fraction {
  int numerator;
  int denominator;

  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) throw ArgumentError("Penyebut tidak boleh 0");
  }

  Fraction operator +(Fraction other) {
    int newNum = numerator * other.denominator + other.numerator * denominator;
    int newDen = denominator * other.denominator;
    return Fraction(newNum, newDen);
  }

  Fraction operator *(Fraction other) {
    return Fraction(numerator * other.numerator, denominator * other.denominator);
  }

  @override
  String toString() => "$numerator/$denominator";
}

void main() {
  Fraction f1 = Fraction(1, 2);
  Fraction f2 = Fraction(1, 3);
  
  print("$f1 + $f2 = ${f1 + f2}");
  print("$f1 * $f2 = ${f1 * f2}");
}
