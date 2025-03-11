import 'package:advanced/core/networking/api_servics.dart';
import 'package:advanced/core/networking/dio_factory.dart';
import 'package:advanced/features/login/data/repos/login_repo.dart';
import 'package:advanced/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiServics>(() => ApiServics(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
