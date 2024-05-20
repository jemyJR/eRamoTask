import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:flutter/material.dart';

class SubjectTopBarText extends StatelessWidget {
  const SubjectTopBarText({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: RichText(
            text: TextSpan(
              text: 'welcome ',
              style: TextStyles.font25White,
              children: <TextSpan>[
                TextSpan(
                  text: name,
                  style: TextStyles.font25White.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        verticalSpace(5),
        Text(
          'Please choose Your Subjects',
          style: TextStyles.font18White,
        ),
      ],
    );
  }
}
