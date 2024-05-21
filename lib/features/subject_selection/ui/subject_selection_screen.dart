import 'package:eramo_task/core/helpers/extensions.dart';
import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/routing/routes.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/core/widgets/custom_button.dart';
import 'package:eramo_task/core/widgets/top_bar.dart';
import 'package:eramo_task/features/subject_selection/logic/cubit/subject_checked_cubit.dart';
import 'package:eramo_task/features/subject_selection/ui/widgets/subject_title_and_grid.dart';
import 'package:eramo_task/features/subject_selection/ui/widgets/subject_top_bar_text.dart';
import 'package:eramo_task/features/subject_selection/data/subjects_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectSelectionScreen extends StatelessWidget {
  const SubjectSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TopBar(
              child: SubjectTopBarText(name: 'Mohamed Gamal'),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10).w,
              child: SubjectTitleAndGrid(subjects: subjects),
            ),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100).w,
              child: BlocBuilder<SubjectCheckedCubit, SubjectCheckedState>(
                builder: (context, state) {
                  return CustomButton(
                    text: 'Next',
                    textStyle: TextStyles.font18White,
                    backgroundColor: ColorsManager.blue,
                    onPressed: () =>
                        context.read<SubjectCheckedCubit>().getSelectedCount() >
                                0
                            ? context.pushNamed(Routes.teatchersProfilesScreen)
                            : () {},
                  );
                },
              ),
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
