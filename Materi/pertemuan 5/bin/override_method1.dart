// toString() — Representasi Teks Objek
/* Secara bawaan, print(objek) menghasilkan "Instance of 'NamaClass'". Kita bisa override toString()
agar hasilnya lebih informatif. */

class Product {
  String name;
  double _price;
  int _stock;

  Product(this.name, this._price, this._stock);

  double get price => _price;
  int get stock => _stock;

  set price(double value) {
    if (value < 0){
      print("Error : Harga tidak boleh negatif!");
    } else {
      _price = value;
    }
  }

  set stock (int value) {
    if (value < 0){
      print("Error : Stok tidak boleh negatif!");
    } else {
      _stock = value;
    }
  }

  @override
  String toString() {
    return "Product(name : $name, price: $_price, stock $_stock)";
  }
}

void main(List<String> args) {
  Product p = Product("Laptop", 15000000, 50);
  print(p);

  p.price = -1000;
  p.stock = 45;
  print(p);
}
