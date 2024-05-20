import 'package:eramo_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10).w,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsManager.black,
        ),
        borderRadius: BorderRadius.circular(15).w,
        color: ColorsManager.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: ColorsManager.black,
          ),
          hintText: 'Search your preferred teachers',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
