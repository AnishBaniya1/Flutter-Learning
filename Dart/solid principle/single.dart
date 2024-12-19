class Invoice{
  String? name;
  double? amt;

  void calculate (){
    print('Calculating Total...');
  }
}
class Printer{
  void printInvoice(){
  print('Printing Invoice');
}
}
void main(){
  Invoice invoice=Invoice();
  invoice.calculate();
Printer printer=Printer();
printer.printInvoice();
}