import 'package:eramo_task/core/helpers/extensions.dart';
import 'package:eramo_task/core/helpers/spacing.dart';
import 'package:eramo_task/core/routing/routes.dart';
import 'package:eramo_task/core/widgets/back_and_confirm_buttons.dart';
import 'package:eramo_task/core/widgets/top_bar.dart';
import 'package:eramo_task/features/teatchers_profiles/logic/cubit/teacher_book_cubit.dart';
import 'package:eramo_task/features/teatchers_profiles/ui/widgets/search_bar.dart';
import 'package:eramo_task/features/teatchers_profiles/ui/widgets/teacher_grid.dart';
import 'package:eramo_task/features/teatchers_profiles/ui/widgets/teatchers_top_bar_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocBuilder<TeacherBookCubit, TeacherBookState>(
              builder: (context, state) {
                return BackAndConfirmButtons(
                  onBack: () => context.pop(),
                  onConfirm: () => state.bookedCount > 0
                      ? context.pushNamed(Routes.paymentScreen)
                      : () {},
                );
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
