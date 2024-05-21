class InvoiceModel {
  final int invoiceNumber;
  final int total;
  final String studentName;
  final String year;
  final String paymentDate;
  final String teacherName;
  final String teacherSubject;

  InvoiceModel({
    required this.invoiceNumber,
    required this.total,
    required this.studentName,
    required this.year,
    required this.paymentDate,
    required this.teacherName,
    required this.teacherSubject,
  });
}
