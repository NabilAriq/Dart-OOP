class BankAccount {
  String owner;
  double _balance; // Private (Lingkup file)

  BankAccount(this.owner, this._balance);

  // Method di file yang sama : bisa akses private field
  void showBalance() => print("Saldo ${owner} : $_balance");
}