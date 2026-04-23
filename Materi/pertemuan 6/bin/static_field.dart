/* Static adalah kata kunci untuk membuat field atau method yang bisa diakses langsung melalui nama class
tanpa perlu membuat objek terlebih dahulu.*/
// Static field/method bersifat bersama — semua objek berbagi nilai yang sama.

class Counter {
  static int _totalCreated = 0;

  String name;

  Counter(this.name){
    _totalCreated++;
  }

  static int get totalCreated => _totalCreated;
}

void main(List<String> args) {
  print(Counter.totalCreated);

  Counter c1 = Counter("counter - 1");
  Counter c2 = Counter("counter - 2");
  Counter c3 = Counter("counter - 3");

  print(Counter._totalCreated);
}