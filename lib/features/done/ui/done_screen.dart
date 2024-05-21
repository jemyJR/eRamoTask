import 'package:eramo_task/core/constants/assets.dart';
import 'package:eramo_task/core/helpers/extensions.dart';
import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/routing/routes.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/core/widgets/custom_button.dart';
import 'package:eramo_task/core/widgets/stepper_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Spacer(),
            Image.asset(Assets.imagesPayPay3),
            verticalSpace(10),
            Icon(
              Icons.check_circle_outline,
              size: 70.sp,
              color: ColorsManager.green,
            ),
            Text(
              'Thank you !',
              style: TextStyles.font30GreenBold,
            ),
            Text(
              'Your payment was successful',
              style: TextStyles.font18Green,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60).w,
              child: CustomButton(
                text: 'Back',
                textStyle: TextStyles.font18BlackBold,
                backgroundColor: ColorsManager.gray,
                onPressed: () =>
                    context.pushNamed(Routes.subjectSelectionScreen),
              ),
            ),
            const Spacer(),
            const StepperContainer(
              step1IsActive: true,
              state1: StepState.complete,
              step2IsActive: true,
              state2: StepState.complete,
              step3IsActive: true,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
