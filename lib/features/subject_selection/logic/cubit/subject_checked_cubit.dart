import 'package:flutter_bloc/flutter_bloc.dart';

part 'subject_checked_state.dart';

class SubjectCheckedCubit extends Cubit<SubjectCheckedState> {
  SubjectCheckedCubit() : super(SubjectCheckedInitial());

  void toggleSelection(int subjectID) {
    final selectedSubjects = List<int>.from(state.selectedSubjects);
    selectedSubjects.contains(subjectID)
        ? selectedSubjects.remove(subjectID)
        : selectedSubjects.add(subjectID);

    emit(SubjectSelectionState(selectedSubjects: selectedSubjects));
  }
}
