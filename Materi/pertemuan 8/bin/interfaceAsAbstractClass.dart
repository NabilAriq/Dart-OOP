// Best Practice

abstract class PaymentGateway {
  String get name;

  void proccesPayment(double amount);
  void refund(double amount);
  bool verifyTransaction(String transactionId);
}

class GoPayGateway implements PaymentGateway {
  @override
  String get name => 'GoPay';

  @override
  void proccesPayment(double amount) {
    print('[$name] Memproses Rp$amount via dompet digital.');
  }

  @override
  void refund(double amount) {
    print('[$name] Refund Rp$amount ke saldo Gopay');
  }

  @override
  bool verifyTransaction(String id) {
    print('[$name] Memverifikasi transaksi $id...');
    return true;
  }
}

class BankTransferGateway implements PaymentGateway {
  @override
  String get name => 'Transfer Bank';

  @override
  void proccesPayment(double amount) {
    print('[$name] Mengirim Rp$amount ke rekening tujuan.');
  }

  @override
  void refund(double amount) {
    print('[$name] Refund Rp$amount membutuhkan 3-5 hari kerja');
  }

  @override
  bool verifyTransaction(String id) {
    print('[$name] Menunggu konfirmasi transfer untuk $id...');
    return true;
  }
}

void main() {
  List<PaymentGateway> paymentGateways = [
    GoPayGateway(),
    BankTransferGateway(),
  ];

  double tagihan = 150000;

  for (var gw in paymentGateways) {
    gw.proccesPayment(tagihan);
  }
}