class BankAccount {
  String _owner;
  String _accountNumber;
  double _balance;
  List<String> _transactionHistory = [];

  BankAccount(this._owner, this._accountNumber, double initialBalance)
    : _balance = initialBalance >= 0 ? initialBalance : 0;

  // Getter read only
  String get owner => _owner;
  String get accountNumber => _accountNumber;
  double get balance => _balance;
  List<String> get transactionHistory => List.unmodifiable(_transactionHistory);

  // deposit method
  void deposit(double amount){
    if (amount <= 0){
      print("Error : Jumlah setoran harus lebih dari 0.");
      return;
    }
    _balance += amount;
    _transactionHistory.add("Setor : +Rp$amount | Saldo : Rp$_balance");
    print("Setoran Rp$amount berhasil.");
  }

  // withdraw method
  void withdraw(double amount){
    if (amount <= 0){
      print("Error : Jumlah penarikan harus lebih dari 0.");
      return;
    }
    if (amount > _balance){
      print("Error : Saldo tidak mencukupi! Saldo : Rp$_balance");
    }
    _balance -= amount;
    _transactionHistory.add("Tarik : -Rp$amount | Saldo : Rp $_balance");
    print("Penarikan Rp$amount berhasil.");
  }

  @override
  String toString() {
    return "BankAcoount (owner : $_owner, no : $_accountNumber, balance : Rp$_balance)";
  }

  @override
  bool operator ==(Object other) {
    // TODO: implement ==
    if (other is! BankAccount) return false;
    return _accountNumber == other._accountNumber;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => _accountNumber.hashCode;
}

void main(List<String> args) {
  BankAccount akun = BankAccount("Budi Santoso", "BRI-001-2024", 1000000);
  print(akun);

  akun.deposit(500000);
  akun.withdraw(200000);
  akun.withdraw(2000000);
  akun.deposit(-100);

  print("\n--- Riwayat Transaksi ---");
  for (var tx in akun.transactionHistory) {
    print(tx);
  }

  print("\nSaldo akhir : Rp${akun.balance}");

  BankAccount akun2 = BankAccount("Budi S.", "BRI-001-2024", 0);
  print(akun == akun2);
}