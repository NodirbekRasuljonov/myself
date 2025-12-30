import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
import 'package:myself/const/text_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double blurvalue = 0.0;
  final GlobalKey _globalKey = GlobalKey<ScaffoldState>();
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: ColorConst.darkColor,
      drawer: drawer(context),
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
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }

  Container drawer(BuildContext context) {
    List<String> scs = TextConsts.sections;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 300.0,
      color: ColorConst.darkColor,
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: ListView.builder(
        itemCount: scs.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              // Navigator.pop(context);
              Navigator.popAndPushNamed(
                context,
                '/${scs[index].toString()}',
              );
            },
            title: Text(
              scs[index],
              style: TextStyle(
                color: ColorConst.kWhiteColor,
                fontSize: 24.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
