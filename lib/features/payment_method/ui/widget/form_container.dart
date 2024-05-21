import 'package:eramo_task/core/constants/assets.dart';
import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/features/payment_method/ui/widget/text_field_with_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormContainer extends StatelessWidget {
  const FormContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsManager.gray,
      child: Form(
        child: Padding(
          padding: const EdgeInsets.all(10).w,
          child: Column(
            children: [
              Image.asset(
                Assets.imagesPayMethodVisaMastercardLogos,
                height: 30.h,
              ),
              verticalSpace(10),
              const TextFieldWithTitle(
                title: 'Credit Name',
                hintText: 'EX: MOHAMED RAGAB',
              ),
              verticalSpace(10),
              const TextFieldWithTitle(
                title: 'Credit Number',
                hintText: 'EX: **** **** **** 5231',
              ),
              verticalSpace(20),
              Row(
                children: [
                  const Expanded(
                    child: TextFieldWithTitle(
                      title: 'Expiration Date',
                      hintText: 'MM/YY',
                    ),
                  ),
                  horizontalSpace(20),
                  const Expanded(
                    child: TextFieldWithTitle(
                      title: 'CVV',
                      hintText: '***',
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
