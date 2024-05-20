import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/features/subject_selection/ui/widgets/subject_container_check.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/subject_model.dart';

class SubjectTitleAndGrid extends StatelessWidget {
  const SubjectTitleAndGrid({super.key, required this.subjects});
  final List<SubjectModel> subjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.gray,
        borderRadius: BorderRadius.circular(15).w,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpace(5),
          Text(
            'Please select Subjects',
            style: TextStyles.font15BlackBold,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.all(10).w,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: subjects.length,
            itemBuilder: (context, index) {
              final subject = subjects[index];
              return SubjectContainerCheck(subject: subject);
            },
          ),
        ],
      ),
    );
  }
}
