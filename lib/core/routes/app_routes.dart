import 'package:chef_app/features/auth/presentaion/screen/chang_lang_screen.dart';
import 'package:chef_app/features/auth/presentaion/screen/login_screen.dart';
import 'package:chef_app/features/auth/presentaion/screen/rest_passwored.dart';
import 'package:chef_app/features/auth/presentaion/screen/send_code_screen.dart';
import 'package:chef_app/features/auth/presentaion/screen/splash_screen.dart';
import 'package:chef_app/features/menu/presentaion/screen/add_meal.dart';
import 'package:chef_app/features/menu/presentaion/screen/menu_home.dart';
import 'package:chef_app/features/profile/presentaion/screen/change_password_screen.dart';
import 'package:chef_app/features/profile/presentaion/screen/profile_home_screen.dart';
import 'package:chef_app/features/profile/presentaion/screen/setting_screen.dart';
import 'package:chef_app/features/profile/presentaion/screen/update_profile_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const initlRoute = '/';
  static const changeLang = '/changeLang';
  static const login = '/login';
  static const sendCode = '/sendCode';
  static const restPassword = '/restPassword';
  static const menuHome = '/menuHome';
  static const addMeal = '/addMeal';
  static const profleHome = '/profleHome';
  static const updateProfile = '/updateProfile';
  static const sitting = '/sitting';
  static const changePassword = '/changePassword';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.addMeal:
        return MaterialPageRoute(builder: (_) => const AddMealScreen());
      case Routes.menuHome:
        return MaterialPageRoute(builder: (_) => const MenuHomeScreen());
      case Routes.changeLang:
        return MaterialPageRoute(builder: (_) => const ChangeLangScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.restPassword:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case Routes.sendCode:
        return MaterialPageRoute(builder: (_) => const SendCodeSreen());
      case Routes.initlRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChngePasswordScreen());
      case Routes.profleHome:
        return MaterialPageRoute(builder: (_) => const ProfileHomeScreen());
      case Routes.sitting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.updateProfile:
        return MaterialPageRoute(builder: (_) => const UdpateProfileScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No route defined for'),
                  ),
                ));
    }
  }
}
