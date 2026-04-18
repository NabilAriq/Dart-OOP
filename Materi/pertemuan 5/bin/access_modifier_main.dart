import "access_modifier_bank_acc.dart";

void main(List<String> args) {
  BankAccount akun = BankAccount("Budi", 500000);
  akun.showBalance();
  print(akun.owner);

  // print(akun._balance);
}