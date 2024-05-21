import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepperContainer extends StatelessWidget {
  const StepperContainer({
    super.key,
    this.step1IsActive = false,
    this.step2IsActive = false,
    this.step3IsActive = false,
    this.state1 = StepState.disabled,
    this.state2 = StepState.disabled,
    this.state3 = StepState.disabled,
  });
  final bool step1IsActive;
  final bool step2IsActive;
  final bool step3IsActive;
  final StepState state1;
  final StepState state2;
  final StepState state3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10).w,
      child: SizedBox(
        height: 80.h,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: ColorsManager.gray,
            shadowColor: Colors.transparent,
            colorScheme: const ColorScheme.light(primary: ColorsManager.green),
          ),
          child: Stepper(
            type: StepperType.horizontal,
            steps: [
              Step(
                title: Text(
                  'Details',
                  style: TextStyles.font10Black,
                ),
                content: Container(),
                isActive: step1IsActive,
                state: state1,
              ),
              Step(
                title: Text(
                  'Payment Method',
                  style: TextStyles.font10Black,
                ),
                content: Container(),
                isActive: step2IsActive,
                state: state2,
              ),
              Step(
                title: Text(
                  'Done',
                  style: TextStyles.font10Black,
                ),
                content: Container(),
                isActive: step3IsActive,
                state: state3,
              ),
            ],
            controlsBuilder: (context, details) {
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
