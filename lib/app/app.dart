import 'package:chef_app/core/routes/app_routes.dart';
import 'package:chef_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
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
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.initlRoute,
          onGenerateRoute: AppRoutes.generateRoute,
          title: 'Flutter Demo',
          theme: getAppTheme()),
    );
  }
}
