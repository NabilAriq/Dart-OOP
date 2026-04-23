class Vehicle {
  String brand;
  int year;
  double price;

  Vehicle(this.brand, this.year, this.price);

  void showInfo() => print("$brand ($year) - Rp$price");
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int year, double price, this.doors) : super(brand, year, price);

  void showCarInfo(){
    showInfo();
    print("Pintu : $doors");
  }
}

class Motorcycle extends Vehicle {
  String type;

  Motorcycle(String brand, int year, double price, this.type) : super(brand, year, price);
}

void main(List<String> args) {
  Car avanza = Car("Toyota Avanza", 2022, 250000000, 4);
  avanza.showCarInfo();
}