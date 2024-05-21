import 'package:eramo_task/core/constants/assets.dart';
import 'package:eramo_task/core/helpers/extensions.dart';
import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/routing/routes.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/core/widgets/back_and_confirm_buttons.dart';
import 'package:eramo_task/core/widgets/custom_button.dart';
import 'package:eramo_task/features/payment/data/invoice_list.dart';
import 'package:eramo_task/features/payment/ui/widgets/invoice_details.dart';
import 'package:eramo_task/core/widgets/stepper_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(Assets.imagesPayPay1),
              verticalSpace(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30).w,
                child: CustomButton(
                  text: 'invoices details',
                  textStyle: TextStyles.font18White,
                  backgroundColor: ColorsManager.blue,
                  onPressed: () {},
                ),
              ),
              verticalSpace(10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: invoices.length,
                itemBuilder: (context, index) {
                  final invoice = invoices[index];
                  return InvoiceDetails(index: index, invoice: invoice);
                },
              ),
              verticalSpace(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30).w,
                child: CustomButton(
                  text: 'pay now (14,500 EGP)',
                  textStyle: TextStyles.font18White,
                  backgroundColor: ColorsManager.blue,
                  onPressed: () {},
                ),
              ),
              verticalSpace(20),
              const StepperContainer(
                step1IsActive: true,
              ),
              verticalSpace(20),
              BackAndConfirmButtons(
                onBack: context.pop,
                onConfirm: () => context.pushNamed(Routes.paymentMethodScreen),
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
