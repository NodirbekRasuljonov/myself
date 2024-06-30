import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
import 'package:myself/const/text_const.dart';
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
        height: MediaQuery.of(context).size.height,
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
            // socials(
            //   icons: "assets/icons/twitter.png",
            // ),
            inputs(),
            send()
          ],
        ),
      ),
    );
  }

  Container inputs() {
    return Container(
      height: 250.0,
      width: 350.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          4.0,
        ),
        border: Border.all(
          color: ColorConst.kWhiteColor,
        ),

        // color: ColorConst.darkColor.withOpacity(0.5),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          TextFormField(

            
          ),
        ],
      ),
    );
  }

  ElevatedButton send() => ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: Size(350, 50),
            backgroundColor: ColorConst.darkColor,
            disabledBackgroundColor: ColorConst.darkColor,
            surfaceTintColor: ColorConst.darkColor,
            foregroundColor: ColorConst.kWhiteColor,
            side: BorderSide(color: ColorConst.kWhiteColor)),
        child: Text(
          TextConsts.send,
          style: TextStyle(
            fontSize: 24.0,
            color: ColorConst.kWhiteColor,
          ),
        ),
      );

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
