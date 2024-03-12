import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
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
      body: IconButton(
        onPressed: () {
          Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
        },
        icon: Icon(
          Icons.telegram,
          size: 100.0,
          color: ColorConst.kWhiteColor,
        ),
      ),
    );
  }
}
