extension IntExtension on int {
  bool get isEven => this % 2 == 0;
  bool get isOdd => this % 2 != 0;

  void times(void Function(int index) action) {
    for (int i = 0; i < this; i++){
      action(i);
    }
  }


  String get toTimeFormat {
    int minutes = this ~/ 60;
    int seconds = this % 60;
    return "${minutes.toString().padLeft(2, "0")}:${seconds.toString().padLeft(2, "0")}";
  }
}

void main(List<String> args) {
  print(4.isEven);
  print(7.isOdd);

  3.times((i) => print("Iterasi ke-$i"));

  print(125.toTimeFormat);
}