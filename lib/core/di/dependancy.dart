import 'package:advanced/core/networking/api_servics.dart';
import 'package:advanced/core/networking/dio_factory.dart';
import 'package:advanced/features/login/data/repos/login_repo.dart';
import 'package:advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced/features/signup/data/repos/signup_repo.dart';
import 'package:advanced/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  //apiservices
  getIt.registerLazySingleton<ApiServics>(() => ApiServics(dio));
  //login cubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //signup Cubit
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}
