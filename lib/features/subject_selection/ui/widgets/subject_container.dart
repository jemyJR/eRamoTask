import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/features/subject_selection/data/subject_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectContainer extends StatelessWidget {
  const SubjectContainer({super.key, required this.subject});
  final SubjectModel subject;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.white,
        borderRadius: BorderRadius.circular(15).w,
        border: Border.all(
          color: ColorsManager.black,
          width: 0.2.w,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15).w,
              image: DecorationImage(
                image: AssetImage(
                  subject.subjectImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 30.h,
              decoration: BoxDecoration(
                color: ColorsManager.gray,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(15).w,
                  bottomRight: const Radius.circular(15).w,
                ),
              ),
              child: Center(
                child: Text(
                  subject.subjectName,
                  style: TextStyles.font18BlackBold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
