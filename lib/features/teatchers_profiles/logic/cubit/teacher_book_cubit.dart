import 'package:eramo_task/features/teatchers_profiles/data/teacher_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'teacher_book_state.dart';

class TeacherBookCubit extends Cubit<TeacherBookState> {
  int currentBookingOrder = 0;

  TeacherBookCubit() : super(TeacherBookState());

  void toggleBooking(TeacherModel teacher) {
    if (!teacher.isBooked) {
      currentBookingOrder += 1;
      teacher.isBooked = true;
      teacher.bookingOrder = currentBookingOrder;
    } else {
      currentBookingOrder -= 1;
      teacher.isBooked = false;
      teacher.bookingOrder = currentBookingOrder;
    }
    emit(TeacherBookState(bookedCount: currentBookingOrder));
  }
}
