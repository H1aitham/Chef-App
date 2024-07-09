

import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/locale/app_locale.dart';
import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocBuilder<GlobalCubit, GlobalState>(
        builder: (context, state) {
          return MaterialApp(
              localizationsDelegates: const [
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                AppLocalizations.delegate
              ],
              supportedLocales: const [
                Locale('ar', "EG"),
                Locale('en', "US")
              ],
              // during BlocProvider arrive to langcode during type it <GlobalCubit>
              locale: Locale(BlocProvider.of<GlobalCubit>(context).langcode),
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.initlRoute,
              onGenerateRoute: AppRoutes.generateRoute,
              title: 'Flutter Demo',
              theme: getAppTheme());
        },
      ),
    );
  }
}
