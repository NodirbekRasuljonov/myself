import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';

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
                action: () {
                  debugPrint("Github");
                },
              ),
              socials(
                icons: "assets/icons/telegram.png",
                action: () {
                  debugPrint("Telegram");
                },
              ),
              socials(icons: "assets/icons/instagram.png", action: (){
                debugPrint("Instagram");
              },),
              socials(icons: "assets/icons/twitter.png", action: (){
                debugPrint("Twitter");
              },),
            ],
          ),
      ),
      );
    
  }

  GestureDetector socials(
      {required String icons, required VoidCallback action}) {
    return GestureDetector(
      
      onTap: action,
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
