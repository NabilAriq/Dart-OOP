
void main(List<String> args) {
  // if, else, else if
  int nilai = 65;
  if (nilai >= 90){
    print("Grade A");
  } else if (nilai >= 80){
    print("Grade B");
  } else if (nilai >= 70){
    print("Grade C");
  } else {
    print("Tidak Lulus");
  }

  // Switch Case
  String hari = "Minggu";

  switch (hari){
    case "Senin" :
    print("Mulai minggu kerja");
    break;

    case "Jumat" :
    print("Akhir minggu kerja");
    break;

    case "Sabtu":
    case "Minggu":
    print("Hari libur");
    break;

    default:
    print("Hari kerja biasa");
  }

  // null (kosongan)
  String? nama = null;
  print(nama);

  // ternary operator
  String hasil = nilai >= 75 ? "Lulus" : "Tidak lulus";
  print(hasil);
}