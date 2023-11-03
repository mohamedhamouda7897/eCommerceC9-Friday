import 'package:e_commerce_c9_friday/features/home/presentation/pages/home.dart';
import 'package:e_commerce_c9_friday/features/login/presentation/pages/login.dart';
import 'package:e_commerce_c9_friday/features/signup/presentation/pages/signup.dart';
import 'package:flutter/material.dart';

class RoutesName {
  static const String login = "/";
  static const String signup = "signup";
  static const String home = "home";
}

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case RoutesName.signup:
        return MaterialPageRoute(
          builder: (context) => SignupScreen(),
        );
      case RoutesName.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => unDefineRoute(),
        );
    }
  }

  static Widget unDefineRoute() {
    return Scaffold(
      appBar: AppBar(
        title: Text("UnDefine"),
      ),
      body: Center(child: Text("Something went wrong")),
    );
  }
}
