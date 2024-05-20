import 'package:eramo_task/core/routing/routes.dart';
import 'package:eramo_task/features/subject_selection/logic/cubit/subject_checked_cubit.dart';
import 'package:eramo_task/features/subject_selection/ui/subject_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.subjectSelectionScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SubjectCheckedCubit(),
            child: const SubjectSelectionScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
