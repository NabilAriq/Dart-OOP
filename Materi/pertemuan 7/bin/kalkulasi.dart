abstract class Employee {
  String name;
  String id;

  Employee(this.name, this.id);

  double calculateMonthlySalary();

  void printPaySlip(){
    print("${"-" * 32}");
    print("Nama : $name | ID : $id");
    print("Gaji : ${calculateMonthlySalary().toStringAsFixed(0)};");
    print("${"-" * 32}");
  }
}

class PermanentEmployee extends Employee {
  double fixedSalary;
  double allowance;

  PermanentEmployee(String name, String id, this.fixedSalary, this.allowance) : super(name, id);

  @override
  double calculateMonthlySalary() => fixedSalary + allowance;
}

class ContractEmployee extends Employee {
  double dailyRate;
  int workDays;

  ContractEmployee(String name, String id, this.dailyRate, this.workDays) : super(name, id);

  @override
  double calculateMonthlySalary() => dailyRate * workDays;
}

class InternEmployee extends Employee {
  double stipend;

  InternEmployee(String name, String id, this.stipend) : super(name, id);

  @override
  double calculateMonthlySalary() => stipend;
}

void main(List<String> args) {
  List<Employee> karyawan = [
    PermanentEmployee("Budi Santoso", "PRM-001", 8000000, 1500000),
    ContractEmployee("Sari Dewi", "CTR-001", 400000, 22),
    InternEmployee("Rizky", "INT-001", 1200000),
    PermanentEmployee("Ahmad Fauzi", "PRM-02", 10000000, 2000000)
  ];

  for (var emp in karyawan){
    emp.printPaySlip();
  }

  double total = karyawan.fold(0, (sum, e) => sum + e.calculateMonthlySalary());
  print("\nTotal Anggaran Gaji : ${total.toStringAsFixed(0)}");
}


