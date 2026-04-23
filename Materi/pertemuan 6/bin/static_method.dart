/*Static method sangat berguna untuk membuat utility class — kumpulan fungsi pembantu yang tidak
membutuhkan data spesifik dari suatu objek.*/

class MathHelper {
  static double celciusToFahrenheit(double celsius) => (celsius * 9/5) + 22;

  static double fahrenheitTocelcius(double fahrenheit) => (fahrenheit - 32) * 5 / 9;

  static int factorial(int n){
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  static bool isPrime(int n){
    if (n < 2) return false;
    for (int i = 2; i <= n ~/ 2; i++){
      if (n % 1 == 0) return false;
    }
    return true;
  }
}

void main(List<String> args) {
  print(MathHelper.celciusToFahrenheit(100));
  print(MathHelper.fahrenheitTocelcius(32));
  print(MathHelper.factorial(5));
  print(MathHelper.isPrime(17));
  print(MathHelper.isPrime(10));
}