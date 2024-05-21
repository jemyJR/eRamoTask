import 'package:eramo_task/core/theming/colors.dart';
import 'package:eramo_task/core/theming/style.dart';
import 'package:eramo_task/core/widgets/custom_button.dart';
import 'package:eramo_task/features/payment_method/ui/widget/form_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethodExpandedTitle extends StatelessWidget {
  const PaymentMethodExpandedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10).w,
      child: ExpansionTile(
        title: Text(
          'Credit Card',
          style: TextStyles.font18BlackBold,
        ),
        leading: const Icon(
          Icons.payment,
          color: ColorsManager.black,
        ),
        initiallyExpanded: true,
        backgroundColor: ColorsManager.blue,
        collapsedBackgroundColor: ColorsManager.gray,
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10).h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10).h,
        ),
        children: [
          const FormContainer(),
          Container(
            height: 10.h,
            color: ColorsManager.white,
          ),
          Container(
            color: ColorsManager.white,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40).w,
                  child: CustomButton(
                    text: 'Add Other Card',
                    textStyle: TextStyles.font18White,
                    backgroundColor: ColorsManager.green.withOpacity(0.5),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
