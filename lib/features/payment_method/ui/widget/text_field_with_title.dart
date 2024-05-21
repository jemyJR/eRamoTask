import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle(
      {super.key, required this.title, required this.hintText});
  final String hintText;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyles.font12Blue,
          ),
        ),
        verticalSpace(5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).w,
            color: ColorsManager.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10).w,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle:
                    TextStyles.font12Black.copyWith(color: ColorsManager.black),
                border: InputBorder.none,
                fillColor: ColorsManager.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
