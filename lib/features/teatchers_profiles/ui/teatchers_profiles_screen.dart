import 'package:eramo_task/core/helpers/extensions.dart';
import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/core/widgets/custom_button.dart';
import 'package:eramo_task/core/widgets/top_bar.dart';
import 'package:eramo_task/features/teatchers_profiles/ui/widgets/search_bar.dart';
import 'package:eramo_task/features/teatchers_profiles/ui/widgets/teacher_grid.dart';
import 'package:eramo_task/features/teatchers_profiles/ui/widgets/teatchers_top_bar_text.dart';
import 'package:flutter/material.dart';

class TeatchersProfilesScreen extends StatelessWidget {
  const TeatchersProfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopBar(
              child: TeatchersTopBarText(),
            ),
            verticalSpace(10),
            const SearchBarWidget(),
            const TeacherGrid(),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                horizontalSpace(30),
                CustomButton(
                  text: 'Back',
                  textStyle: TextStyles.font18BlackBold,
                  backgroundColor: ColorsManager.gray,
                  onPressed: () => context.pop(),
                ),
                horizontalSpace(30),
                CustomButton(
                  text: 'Confirm',
                  textStyle: TextStyles.font18White,
                  backgroundColor: ColorsManager.blue,
                  onPressed: () {},
                ),
                horizontalSpace(30),
              ],
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
