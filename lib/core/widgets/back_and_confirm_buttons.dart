import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BackAndConfirmButtons extends StatelessWidget {
  const BackAndConfirmButtons(
      {super.key, required this.onBack, required this.onConfirm});
  final Function() onBack;
  final Function() onConfirm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButton(
          text: 'Back',
          textStyle: TextStyles.font18BlackBold,
          backgroundColor: ColorsManager.gray,
          onPressed: onBack,
        ),
        CustomButton(
          text: 'Confirm',
          textStyle: TextStyles.font18White,
          backgroundColor: ColorsManager.blue,
          onPressed: onConfirm,
        ),
      ],
    );
  }
}
