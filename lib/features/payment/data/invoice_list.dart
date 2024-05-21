import 'package:eramo_task/core/constants/strings.dart';
import 'package:eramo_task/features/payment/data/invoice_model.dart';

List<InvoiceModel> invoices = [
  InvoiceModel(
    invoiceNumber: 12500045125,
    total: 1000,
    studentName: 'Mohamed Gamal',
    year: '2023',
    paymentDate: '2023-05-21',
    teacherName: 'Jane Smith',
    teacherSubject: Strings.english,
  ),
  InvoiceModel(
    invoiceNumber: 12500045126,
    total: 1500,
    studentName: 'Mohamed Ali',
    year: '2023',
    paymentDate: '2023-05-22',
    teacherName: 'Robert Brown',
    teacherSubject: Strings.math,
  ),
];
