import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';

class SampleanimationPage extends StatelessWidget {
  const SampleanimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      color: ColorConst.darkColor,
      child: AnimatedTextKit(
        totalRepeatCount: 1,
        onTap: () {
          debugPrint("Helloooooo");
        },
        pause: const Duration(milliseconds: 1500),
        animatedTexts: [
          TyperAnimatedText(
            "Hello World",
            textStyle: TextStyle(
              fontSize: 24.0,
              color: ColorConst.kWhiteColor,
              decoration: TextDecoration.none,
            ),
            speed: const Duration(
              milliseconds: 100,
            ),
          ),
          // TypewriterAnimatedText(
          //   "Welcome",
          //   textStyle: TextStyle(
          //     fontSize: 24.0,
          //     color: ColorConst.kWhiteColor,
          //     decoration: TextDecoration.none,
          //   ),
          //   speed: const Duration(
          //     milliseconds: 100,
          //   ),
          // ),
          // FadeAnimatedText(
          //   "My Name is Nodirbek",
          //   textStyle: TextStyle(
          //     color: ColorConst.kWhiteColor,
          //     fontSize: 24.0,
          //     decoration: TextDecoration.none,
          //   ),
          // ),
          // ScaleAnimatedText(
          //   "I am a student at Vistula University",
          //   textStyle: TextStyle(
          //     color: ColorConst.kWhiteColor,
          //     fontSize: 24.0,
          //     decoration: TextDecoration.none,
          //   ),
          //   textAlign: TextAlign.center,
          //   duration: Duration(milliseconds: 3000),
          //   scalingFactor: 0.2,
          // ),
        ],
      ),
    );
  }
}
