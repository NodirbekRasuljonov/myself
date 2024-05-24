
import 'package:flutter/material.dart';
import 'package:myself/home/homepage.dart';
import 'package:myself/sections/aboutme.dart';
import 'package:myself/sections/contact.dart';
import 'package:myself/sections/post.dart';
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
      case "/Home":
        return MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        );

      case "/Contact":
        return MaterialPageRoute(
          builder: (context) {
            return const ContactSection();
          },
        );
      case "/About Me":
        return MaterialPageRoute(
          builder: (context) {
            return AboutMePage();
          },
        );
        case "/Posts":
        return MaterialPageRoute(
          builder: (context) {
            return Posts();
          },
        );
    }
    return null;
  }
}
