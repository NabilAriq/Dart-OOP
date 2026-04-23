class Student {
  String name;
  double gpa;
  
  Student(this.name, this.gpa);
}

 extension StudentExtension on Student {
   String get grade {
     if (gpa >= 3.5) return "A (Cumlaude)";
     if (gpa >= 3.0) return "B (Memuaskan)";
     if (gpa >= 2.0) return "C (Cukup)";
     return "D (Kurang)";
   }

   void printReport(){
    print("$name - IPK : $gpa - predikat : $grade");
   }
}

void main(List<String> args) {
  Student budi = Student("Budi", 3.7);
  Student sari = Student("Sari", 2.5);

  budi.printReport();
  sari.printReport();
}