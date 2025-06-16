import 'package:auvent_flutter_task/core/resources/color_manager.dart';
import 'package:auvent_flutter_task/core/routing/route_generator.dart';
import 'package:auvent_flutter_task/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AUVENTApp extends StatelessWidget {
  final AppRouter appRouter;
  const AUVENTApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreenRoute,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsManager.whiteColor,
          primaryColor: ColorsManager.primaryColor,
        ),
        title: 'AUVENT App',
        onGenerateRoute: appRouter.getRoute,
      ),
    );
  }
}
