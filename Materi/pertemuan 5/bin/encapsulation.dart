/* Encapsulation (Enkapsulasi) adalah prinsip OOP yang berarti:
 1. Mengumpulkan data (field) dan perilaku (method) yang berkaitan dalam satu class.
 2. Menyembunyikan detail internal field dari akses luar yang tidak terkontrol.
 3. Menyediakan pintu akses yang terkontrol melalui getter dan setter. */

//  Tanpa encapsulation
class BankAccount {
  double balance = 0;
}

void main(List<String> args) {
  BankAccount akun = BankAccount();
  akun.balance = -9999999; 
}

// Dengan encapsulation
class BankAccountSafe {
  double _balance = 0; // Private

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  double get balance => _balance;
}