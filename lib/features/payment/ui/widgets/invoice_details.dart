import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/features/payment/data/invoice_model.dart';
import 'package:eramo_task/features/payment/ui/widgets/invoice_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({super.key, required this.index, required this.invoice});
  final InvoiceModel invoice;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10).w,
      child: ExpansionTile(
        title: Text(
          'Invoices (${index + 1}) details',
          style: TextStyles.font18Black,
        ),
        initiallyExpanded: true,
        backgroundColor: ColorsManager.gray,
        collapsedBackgroundColor: ColorsManager.gray,
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10).h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10).h,
        ),
        iconColor: ColorsManager.black,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).w,
            child: const Divider(
              color: ColorsManager.black,
              thickness: 1,
            ),
          ),
          InvoiceRow(
              label: 'Invoice number', value: invoice.invoiceNumber.toString()),
          InvoiceRow(label: 'Total', value: invoice.total.toString()),
          InvoiceRow(label: 'Student name', value: invoice.studentName),
          InvoiceRow(label: 'Year', value: invoice.year),
          InvoiceRow(label: 'Payment date', value: invoice.paymentDate),
          InvoiceRow(label: 'Teacher name', value: invoice.teacherName),
          InvoiceRow(label: 'Teacher subject', value: invoice.teacherSubject),
        ],
      ),
    );
  }
}
