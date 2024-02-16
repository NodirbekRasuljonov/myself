import 'package:flutter/material.dart';
import 'package:myself/home/homepage.dart';
import 'package:myself/splash/splash.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/splash":
        return MaterialPageRoute(
          builder: (context) {
            return const SplashPage();
          },
        );
      case "/home":
        return MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        );
    }
    return null;
  }
}
