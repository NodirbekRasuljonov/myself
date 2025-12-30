import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';
import 'package:myself/const/text_const.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});
//
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        
        // shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            expandedHeight: 120.0,
            pinned: true,

            backgroundColor: ColorConst.darkColor,
           flexibleSpace: Container(color: ColorConst.darkColor,),
            title: Text(
              TextConsts.abouttitle,
              style: TextStyle(
                color: ColorConst.kWhiteColor,
                fontSize: 24.0,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                TextConsts.about,
                style: TextStyle(
                  color: ColorConst.darkColor,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SliverGrid(
            
            delegate: SliverChildBuilderDelegate(
              
              (context, index) {
              
                return Text(
                    TextConsts.skills[index],
                    style: TextStyle(
                      color: ColorConst.darkColor,
                      fontSize: 18.0,
                      
                    ),
                    textAlign: TextAlign.center,
                  );
                
                
              },
              
              childCount: TextConsts.skills.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,),
          ),
        ],
      ),
    );
  }
}
