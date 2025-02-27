import 'package:advanced/core/routing/app_router.dart';
import 'package:advanced/core/routing/routes.dart';
import 'package:advanced/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: ColorsManger.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        title: 'Doc App',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: appRouter.gnerateRoute,
      ),
    );
  }
}
