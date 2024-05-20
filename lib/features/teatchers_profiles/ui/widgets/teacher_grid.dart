import 'package:eramo_task/features/teatchers_profiles/data/teachers_list.dart';
import 'package:eramo_task/features/teatchers_profiles/ui/widgets/teacher_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherGrid extends StatelessWidget {
  const TeacherGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10).w,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 3.5 / 5,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: teachers.length,
      itemBuilder: (context, index) {
        final teacher = teachers[index];
        return TeacherCard(teacher: teacher);
      },
    );
  }
}
