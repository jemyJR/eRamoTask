import 'package:eramo_task/core/constants/assets.dart';
import 'package:eramo_task/core/helpers/extensions.dart';
import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/routing/routes.dart';
import 'package:eramo_task/core/widgets/back_and_confirm_buttons.dart';
import 'package:eramo_task/core/widgets/stepper_container.dart';
import 'package:eramo_task/features/payment_method/ui/widget/payment_method_expanded_title.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(Assets.imagesPayPay2),
              verticalSpace(10),
              const PaymentMethodExpandedTitle(),
              const StepperContainer(
                step1IsActive: true,
                state1: StepState.complete,
                step2IsActive: true,
              ),
              verticalSpace(20),
              BackAndConfirmButtons(
                onBack: context.pop,
                onConfirm: () => context.pushNamed(Routes.doneScreen),
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
