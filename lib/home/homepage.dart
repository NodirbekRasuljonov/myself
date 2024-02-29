import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:myself/const/color_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double blurvalue = 0.0;
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.darkColor,
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        width: 250.0,
        color: Colors.purpleAccent,
      ),
      onDrawerChanged: (v) {
        setState(() {
          isOpen = v;
        });
      },
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConst.kWhiteColor),
        backgroundColor: ColorConst.darkColor,
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(
              color: ColorConst.kWhiteColor,
              fontSize: 24.0,
              decoration: TextDecoration.none),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        
      ),
    );
  }
}
