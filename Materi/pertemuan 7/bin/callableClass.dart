/*Callable Class adalah class yang bisa dipanggil seperti fungsi. Caranya adalah dengan menambahkan
method bernama call() di dalam class. Setelah membuat objeknya, kita bisa langsung memanggil objek
tersebut layaknya pemanggilan fungsi.*/

class Greeting {
  String prefix;
  Greeting(this.prefix);

  // Method call() — membuat class ini bisa dipanggil seperti fungsi
  String call(String name) {
    return "$prefix $name";
  }
}

void main(List<String> args) {
  Greeting sayHello = Greeting("Halo");
  Greeting sayGoodMorning = Greeting("Selamat Pagi");

  // memanggil objek seperti fungsi
  print(sayHello("Budi"));
  print(sayGoodMorning("Budi"));
}
