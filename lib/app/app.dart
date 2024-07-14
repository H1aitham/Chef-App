import 'package:chef_app/core/bloc/cubit/global_cubit.dart';
import 'package:chef_app/core/locale/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/bloc/cubit/global_state.dart';
import '../core/routes/app_routes.dart';
import '../core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => BlocBuilder<GlobalCubit, GlobalState>(
        builder: (context, state) {
          return MaterialApp(
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,//ios//and
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                AppLocalizations.delegate//import from local
              ],
              supportedLocales: const [ //lang add to app

                Locale('ar', "EG"),//countr code
                Locale('en', "US"),
              ],
              locale:  Locale(BlocProvider.of<GlobalCubit>(context).langCode),
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.intitlRoute,
              onGenerateRoute: AppRoutes.generateRoute,
              title: 'Flutter Demo',
              theme: getAppTheme());
        },
      ),
    );
  }
}
