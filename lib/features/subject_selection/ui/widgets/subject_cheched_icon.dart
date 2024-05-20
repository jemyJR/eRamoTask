import 'package:eramo_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectCheckedIcon extends StatelessWidget {
  const SubjectCheckedIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.green.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15).w,
        border: Border.all(
          color: ColorsManager.green,
          width: 1.w,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.check,
          color: ColorsManager.white,
          size: 50.sp,
        ),
      ),
    );
  }
}
