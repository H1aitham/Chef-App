import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/features/auth/presentaion/cubits/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;
void initServiceLoactor() {
  sl.registerLazySingleton(() => GlobalCubit());
   sl.registerLazySingleton(() => LoginCubit());

  sl.registerLazySingleton(() => CacheHelper());
}
