import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;
void initServiceLoactor() {
  sl.registerLazySingleton(() => GlobalCubit());

  sl.registerLazySingleton(() => CacheHelper());
}
