import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
import 'package:myself/const/text_const.dart';
import 'package:myself/const/url_const.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class ContactSection extends StatelessWidget {
  ContactSection({super.key});
  TextEditingController msgController = TextEditingController();

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
        alignment: Alignment.center,
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
            inputs(context),
            send(context),
            // Lottie.asset(
            //   'assets/animations/checked.json',
            //   height: 50.0,
            // ),
          ],
        ),
      ),
    );
  }

  Container inputs(context) {
    return Container(
      height: 150.0,
      width: 350.0,
      alignment: Alignment.center,
      // color: Colors.amber,

      child: SizedBox.expand(
        child: TextFormField(
          maxLines: 100,
          cursorColor: ColorConst.kWhiteColor,
          style: TextStyle(color: ColorConst.kWhiteColor, fontSize: 18.0),
          controller: msgController,
          decoration: InputDecoration(
            focusColor: ColorConst.kWhiteColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: ColorConst.kWhiteColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: ColorConst.kWhiteColor,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: ColorConst.kWhiteColor,
              ),
            ),
            // contentPadding:
            //     EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          ),
        ),
      ),
    );
  }

  ElevatedButton send(context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(350, 50),
          backgroundColor: ColorConst.darkColor,
          disabledBackgroundColor: ColorConst.darkColor,
          surfaceTintColor: ColorConst.darkColor,
          foregroundColor: ColorConst.kWhiteColor,
          side: BorderSide(color: ColorConst.kWhiteColor),
        ),
        child: Text(
          TextConsts.send,
          style: TextStyle(
            fontSize: 24.0,
            color: ColorConst.kWhiteColor,
          ),
        ),
        onPressed: () async {
          debugPrint("salom hammaga men buttonman");
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  insetPadding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 50.0),
                  backgroundColor: Colors.amber,
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/animations/checked.json',
                        repeat: false,
                      ),
                      Text(
                        "Your massage has been sent succesfully !!!",
                        style: TextStyle(
                          color: ColorConst.kWhiteColor,
                          fontSize: 24.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ));
            },
          );
        },
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
