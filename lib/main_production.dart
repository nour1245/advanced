import 'package:advanced/core/di/dependancy.dart';
import 'package:advanced/core/helpers/bloc_observer.dart';
import 'package:advanced/core/routing/app_router.dart';
import 'package:advanced/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  Bloc.observer = MyBlocObserver();

  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
