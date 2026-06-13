enum TrafficLight {
  red, yellow, green;

  TrafficLight get next {
    switch (this) {
      case TrafficLight.red: return TrafficLight.green;
      case TrafficLight.green: return TrafficLight.yellow;
      case TrafficLight.yellow: return TrafficLight.red;
    }
  }

  String get instruction {
    switch (this) {
      case TrafficLight.red: return "STOP - Berhenti!";
      case TrafficLight.yellow: return "SLOW - Bersiap!";
      case TrafficLight.green: return "GO - Jalan!";
    }
  }
}

void main() {
  TrafficLight light = TrafficLight.red;

  for (int i = 0; i < 6; i++) {
    print("Lampu $i : ${light.name.toUpperCase()} - ${light.instruction}");
    light = light.next;
  }
}