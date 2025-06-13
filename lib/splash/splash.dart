import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
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
        Navigator.pushReplacementNamed(context, "/Home");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: ColorConst.darkColor,
      alignment: Alignment.center,
      child: AnimatedTextKit(
        totalRepeatCount: 1,
        animatedTexts: [
          TypewriterAnimatedText(
            "Welcome to my Portfolio App",
            textAlign: TextAlign.center,
            textStyle: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              color: ColorConst.kWhiteColor,
              decoration: TextDecoration.none,
            ),
            // ignore: prefer_const_constructors
            speed: Duration(milliseconds: 60),
          ),
        ],
      ),
    );
  }
}
