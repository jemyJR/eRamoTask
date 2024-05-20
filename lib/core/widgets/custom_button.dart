import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.textStyle,
    required this.backgroundColor,
    required this.onPressed,
  });

  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: backgroundColor,
      elevation: 0.5,
      padding: const EdgeInsets.all(10).h,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10).h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: textStyle),
        ],
      ),
    );
  }
}
