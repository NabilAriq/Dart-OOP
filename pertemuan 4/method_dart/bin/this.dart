class Car{
  String brand = "yamaha";
  int year = 0;

  Car(String brand, int year){
    this.brand = brand;
    this.year = year;
  }

  void showInfo(){
    print("Mobil : $brand, Tahun : $year");
    print("Mobil : ${this.brand}, Tahun : ${this.year}");
  }
}

void main(List<String> args) {
  Car honda = Car("Honda", 2020);
  honda.showInfo();
}