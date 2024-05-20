import 'package:eramo_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends StatelessWidget {
  final Widget child;
  const TopBar({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        color: ColorsManager.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(40).w,
          bottomRight: const Radius.circular(40).w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 30.w,
          left: 15.w,
          right: 15.w,
          bottom: 15.w,
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
