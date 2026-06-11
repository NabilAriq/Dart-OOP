enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday
}

void describeDay(DayOfWeek day) {
  switch (day) {
    case DayOfWeek.monday:
      print('Hari senin');
      print('${day.name}: Hari kerja. Masuk kantor!');
      break;
    case DayOfWeek.tuesday:
      print('Hari selasa');
      break;
    case DayOfWeek.wednesday:
      print('Hari rabu');
      break;
    case DayOfWeek.thursday:
      print('Hari kamis');
      break;
    case DayOfWeek.friday:
      print('Hari jumat');
      break;
    case DayOfWeek.saturday:
      print('Sabtu: Akhir pekan — waktu istirahat.');
    case DayOfWeek.sunday:
      print('Minggu: Hari libur — bermain bersama keluarga!');
  }
}

void main(List<String> args) {
  describeDay(DayOfWeek.monday);
  describeDay(DayOfWeek.saturday);
  describeDay(DayOfWeek.sunday);

  print("\n--- Semua Hari ---");
  for (var day in DayOfWeek.values) {
    print("${day.index}: ${day.name}");
  }
}


