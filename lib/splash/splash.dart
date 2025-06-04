import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () {
        // Navigator.pushReplacementNamed(context, "/Home");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: ColorConst.darkColor,
      child: Center(
        child: Text(
          "Welcome to my Portfolio App",
          style: TextStyle(
            decoration: TextDecoration.none,
            fontStyle: FontStyle.italic,
            color: ColorConst.kWhiteColor,
            fontSize: 33.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
