class infoInvoice {
  String id;
  String employeeName;
  String ProductSold;
  DateTime date;

  infoInvoice({required this.id, required this.employeeName,required this.ProductSold, required this.date});
}

final List<infoInvoice> invoices = [
  infoInvoice(id: '001', employeeName: 'محمد', ProductSold: 'جوال', date: DateTime(2023, 12, 1),),
  infoInvoice(id: '002', employeeName: 'أحمد', ProductSold: 'لابتوب', date: DateTime(2023, 12, 5),),
  infoInvoice(id: '003', employeeName: 'سارة', ProductSold: 'ساعة + جوال', date: DateTime(2023, 12, 10),),
];