import 'package:eramo_task/core/routing/app_router.dart';
import 'package:eramo_task/core/routing/routes.dart';
import 'package:eramo_task/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ERamoTask extends StatelessWidget {
  const ERamoTask({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'ERamoTask',
        theme: ThemeData(
          primaryColor: ColorsManager.blue,
          scaffoldBackgroundColor: ColorsManager.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.subjectSelectionScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
