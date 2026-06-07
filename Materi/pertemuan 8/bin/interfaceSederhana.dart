// Class ini berfungsi sebagai interface
// class Printable {
// void printDocument() {} // Isi kosong atau langsung pakai abstract class
// }

// Lebih baik gunakan abstract class untuk interface
abstract class Printable {
void printDocument();
}
class InvoicePrinter implements Printable {
@override
void printDocument() => print('Mencetak invoice...');
}
class ReportPrinter implements Printable {
@override
void printDocument() => print('Mencetak laporan bulanan...');
}
//