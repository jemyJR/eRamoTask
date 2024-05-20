part of 'subject_checked_cubit.dart';

abstract class SubjectCheckedState {
  List<int> get selectedSubjects;
}

class SubjectCheckedInitial extends SubjectCheckedState {
  @override
  List<int> get selectedSubjects => [];
}

class SubjectSelectionState extends SubjectCheckedState {
  @override
  final List<int> selectedSubjects;

  SubjectSelectionState({this.selectedSubjects = const []});
}
