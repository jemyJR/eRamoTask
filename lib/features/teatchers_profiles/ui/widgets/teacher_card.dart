import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/core/widgets/custom_button.dart';
import 'package:eramo_task/features/teatchers_profiles/data/teacher_model.dart';
import 'package:eramo_task/features/teatchers_profiles/logic/cubit/teacher_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({super.key, required this.teacher});
  final TeacherModel teacher;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TeacherBookCubit, TeacherBookState>(
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10).w,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsManager.gray,
                  borderRadius: BorderRadius.circular(15).w,
                  border: teacher.isBooked
                      ? Border.all(color: ColorsManager.green, width: 2)
                      : null,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10).w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundImage: AssetImage(teacher.image),
                      ),
                      verticalSpace(5),
                      Text(
                        teacher.name,
                        style: TextStyles.font15BlackBold,
                      ),
                      verticalSpace(10),
                      Text(
                        '${teacher.price} EGP',
                        style: TextStyles.font12Green,
                      ),
                      verticalSpace(10),
                      Text(
                        '${teacher.subject} subject',
                        style: TextStyles.font12Black,
                      ),
                      verticalSpace(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10).w,
                        child: button(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (teacher.isBooked) counter(),
          ],
        );
      },
    );
  }

  Align counter() {
    return Align(
      alignment: const Alignment(0.7, -1),
      child: CircleAvatar(
        radius: 15.r,
        backgroundColor: ColorsManager.green,
        child: Text(
          teacher.bookingOrder.toString(),
          style: TextStyles.font12White,
        ),
      ),
    );
  }

  CustomButton button(BuildContext context) {
    return CustomButton(
      text: teacher.isBooked ? 'Booked' : 'Book',
      textStyle: TextStyles.font15White,
      backgroundColor:
          teacher.isBooked ? ColorsManager.green : ColorsManager.blue,
      onPressed: () => context.read<TeacherBookCubit>().toggleBooking(teacher),
      suffixIcon: Icon(
        teacher.isBooked ? Icons.check : Icons.calendar_month,
        color: ColorsManager.white,
        size: 20.sp,
      ),
    );
  }
}
