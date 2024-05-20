import 'package:eramo_task/features/subject_selection/logic/cubit/subject_checked_cubit.dart';
import 'package:eramo_task/features/subject_selection/ui/widgets/subject_cheched_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eramo_task/features/subject_selection/data/subject_model.dart';
import 'package:eramo_task/features/subject_selection/ui/widgets/subject_container.dart';

class SubjectContainerCheck extends StatelessWidget {
  const SubjectContainerCheck({super.key, required this.subject});
  final SubjectModel subject;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<SubjectCheckedCubit>().toggleSelection(subject.id);
      },
      child: Stack(
        children: [
          SubjectContainer(subject: subject),
          BlocBuilder<SubjectCheckedCubit, SubjectCheckedState>(
            builder: (context, state) {
              if (state.selectedSubjects.contains(subject.id)) {
                return const SubjectCheckedIcon();
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
