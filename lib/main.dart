import 'package:chef_app/app/app.dart';
import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServiceLoactor();
  await sl<CacheHelper>().init();

  //use BlocProvider becuase must perant
  runApp(BlocProvider(
    create: (context) => sl<GlobalCubit>()..getCacheLang(),
    child: const MyApp(),
  ));
}
