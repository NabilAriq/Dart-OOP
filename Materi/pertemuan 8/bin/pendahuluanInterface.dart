class Kendaraan {
  String platNomor;

  Kendaraan(this.platNomor);

  void bunyikanKlakson() => print("Tin tiin!");
}

// EXTENDS : mewarisi field dan method secara langsung
class Mobil extends Kendaraan {
  Mobil(String platNomor) : super(platNomor);
}

// IMPLEMENTS : mewari
class Motor implements Kendaraan {
  @override
  String platNomor;

  Motor(this.platNomor);

  @override
  void bunyikanKlakson() => print("Tin tiin!");
}