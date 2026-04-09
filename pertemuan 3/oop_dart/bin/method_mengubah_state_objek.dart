class BankAccount {
  String owner = "";
  double balance = 0;

  // Method untuk menambah sald
  void deposit(double amount){
    balance += amount;
    print("Setoran Rp$amount berhasil. Saldo sekarang : Rp$balance");
  }

  // Method untuk menari saldo
  void withdraw(double amount){
    if (amount > balance){
      print("Saldo tidak mencukupi! Saldo saat ini Rp$balance");
    } else {
      balance -= amount;
      print("Penarikan Rp$amount berhasil. Saldo tersisa Rp$balance");
    }
  }

  // Method untuk menampilkan info
  void showBalance(){
    print("Rekening milik $owner | Saldo : Rp$balance");
  }
}

void main(List<String> args) {
  BankAccount akun = BankAccount();
  akun.owner = "Budi Santoso";

  akun.showBalance();
  akun.deposit(500000);
  akun.deposit(200000);
  akun.withdraw(100000);
  akun.withdraw(1000000);
  akun.showBalance();
}
