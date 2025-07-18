import 'package:flutter/material.dart';
import 'package:myself/home/homepage.dart';
import 'package:myself/sample/sampleanimation.dart';
import 'package:myself/sections/aboutme.dart';
import 'package:myself/sections/contact.dart';
import 'package:myself/sections/post.dart';
import 'package:myself/sections/projects.dart';
import 'package:myself/splash/splash.dart';

class AppRoute {
  Route? onGenerateRoute(RouteSettings s) {
    switch (s.name) {
      case "/sample":
        return MaterialPageRoute(
          builder: (context) {
            return const SampleanimationPage();
          },
        );
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
            return  ContactSection();
          },
        );
      case "/About Me":
        return MaterialPageRoute(
          builder: (context) {
            return const AboutMePage();
          },
        );
      case "/Posts":
        return MaterialPageRoute(
          builder: (context) {
            return const Posts();
          },
        );
      case "/Projects":
        return MaterialPageRoute(
          builder: (context) {
            return Projects();
          },
        );
    }
    return null;
  }
}
