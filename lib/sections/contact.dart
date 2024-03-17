import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
import 'package:myself/const/url_const.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.darkColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorConst.kWhiteColor,
        ),
        title: Text(
          "Contact",
          style: TextStyle(
            color: ColorConst.kWhiteColor,
            fontSize: 24.0,
          ),
        ),
        backgroundColor: ColorConst.darkColor,
      ),
      body: Container(
        height: 500.0,
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            socials(
              icons: "assets/icons/github.png",
              url: UrlConst.github,
            ),
            socials(
              icons: "assets/icons/telegram.png",
              url: UrlConst.telegram,
            ),
            socials(
              icons: "assets/icons/instagram.png",
              url: UrlConst.instagram,
            ),
            socials(
              icons: "assets/icons/twitter.png",
              url: UrlConst.twitter,
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector socials({required String icons, required Uri url}) {
    return GestureDetector(
      onTap: () {
        launchUrl(url);
      },
      child: SizedBox(
        height: 75.0,
        child: Image.asset(
          icons,
          color: ColorConst.kWhiteColor,
        ),
      ),
    );
  }
}
