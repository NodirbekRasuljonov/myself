import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
import 'package:myself/const/text_const.dart';
import 'package:myself/const/url_const.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection>
    with SingleTickerProviderStateMixin {
  TextEditingController msgController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  final GlobalKey<FormState> _msgKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _mailKey = GlobalKey<FormState>();
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.addListener(
      () {
        if (_controller.value >= 0.5) {
          _controller.stop();
          Future.delayed(const Duration(seconds: 1)).then((_) {
            Navigator.pop(context);
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16.0,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  socials(
                    icons: "assets/icons/github.png",
                    url: UrlConst.github,
                  ),
                  const SizedBox(height: 12),
                  socials(
                    icons: "assets/icons/telegram.png",
                    url: UrlConst.telegram,
                  ),
                  const SizedBox(height: 12),
                  socials(
                    icons: "assets/icons/instagram.png",
                    url: UrlConst.instagram,
                  ),
                  const SizedBox(height: 16),
                  inputs(context),
                  const SizedBox(height: 12),
                  mail(context),
                  const SizedBox(height: 12),
                  send(context),
                ],
              ),
            ),
          ),
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

      child: Form(
        key: _msgKey,
        child: SizedBox.expand(
          child: TextFormField(
            validator: (value) =>
                value!.isEmpty ? "It cannot be empty!!!" : null,
            maxLines: 5,
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
                errorStyle: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 18,
                )),
          ),
        ),
      ),
    );
  }

  Container mail(context) {
    return Container(
      height: 75.0,
      width: 350.0,
      alignment: Alignment.center,
      // color: Colors.amber,

      child: Form(
        key: _mailKey,
        child: SizedBox.expand(
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "It cannot be empty!!!";
              }
              // Simple email regex
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              if (!emailRegex.hasMatch(value)) {
                return "Please enter a valid email address";
              }
              return null;
            },
            maxLines: 1,
            cursorColor: ColorConst.kWhiteColor,
            style: TextStyle(color: ColorConst.kWhiteColor, fontSize: 18.0),
            controller: mailController,
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
                errorStyle: const TextStyle(
                  color: Colors.redAccent,
                  fontSize: 15,
                )),
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
        validateAndSave();
      });

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

  void validateAndSave() {
    final FormState? msgForm = _msgKey.currentState;
    final FormState? mailForm = _mailKey.currentState;
    if (msgForm != null &&
        mailForm != null &&
        msgForm.validate() &&
        mailForm.validate()) {
      _controller.reset();
      debugPrint("salom hammaga men buttonman");
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LottieBuilder.asset(
                    'assets/animations/checked.json',
                    controller: _controller,
                    onLoaded: (composition) {
                      _controller
                        ..duration = composition.duration
                        ..forward();
                    },
                    width: 300.0,
                    height: 300.0,
                    // repeat: false,
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
              ),
              insetPadding: const EdgeInsets.symmetric(
                vertical: 50.0,
                horizontal: 50.0,
              ),
            ),
          );
        },
      );
      msgController.clear();
      mailController.clear();
    } else {}
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
