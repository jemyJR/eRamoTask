import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:flutter/material.dart';

class TeatchersTopBarText extends StatelessWidget {
  const TeatchersTopBarText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            'Very Good..',
            style: TextStyles.font30WhiteBold,
          ),
        ),
        verticalSpace(5),
        Text(
          'Please Choose your preferred teachers',
          style: TextStyles.font18White,
        ),
      ],
    );
  }
}
