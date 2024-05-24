import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
import 'package:myself/const/text_const.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.darkColor,
        iconTheme: IconThemeData(
          color: ColorConst.kWhiteColor,
        ),
        title: Text(
          SectionConst.abouttitle,
          style: TextStyle(
            color: ColorConst.kWhiteColor,
            fontSize: 24.0,
          ),
        ),
      ),
      backgroundColor: ColorConst.darkColor,
      body: Center(
        child: Container(
          height: 500.0,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/profile.jpg",
                ),
                radius: 85.0,
              ),
              Text(
                SectionConst.about,
                style: TextStyle(
                  color: ColorConst.kWhiteColor,
                  fontSize: 22.0,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
