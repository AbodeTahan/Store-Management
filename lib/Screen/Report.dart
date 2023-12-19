import 'package:flutter/material.dart';
import '../Model/InfoInvoice.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التقارير'),
      ),
      body: ListView.builder(
        itemCount: invoices.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('فاتورة رقم: ${invoices[index].id}'),
            subtitle: Text(
                'اسم الموظف: ${invoices[index].employeeName}\nالمنتجات: ${invoices[index].ProductSold}\nتاريخ الفاتورة: ${invoices[index].date.toString()}'),
          );
        },
      ),
    );
  }
}