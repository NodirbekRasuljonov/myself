import 'package:flutter/material.dart';
import 'package:myself/const/color_const.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorConst.darkColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorConst.kWhiteColor,
        ),
        title: Text(
          "Posts",
          style: TextStyle(
            color: ColorConst.kWhiteColor,
            fontSize: 24.0,
          ),
        ),
        backgroundColor: ColorConst.darkColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(height: 15,),

          padding: EdgeInsets.symmetric(horizontal: 20.0),

          itemBuilder:(context,index)=> 
            Container(
              height: 250.0,
              width: 350.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: Color.fromARGB(255, 30, 42, 73),
                image: DecorationImage(
                  image: AssetImage("assets/images/soft.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.4,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Starting a journey",
                    style: TextStyle(
                      color: ColorConst.kWhiteColor,
                      fontSize: 35.0,
                      
                    ),
                  ),
                  Text(
                    "01.06.2021",
                    style: TextStyle(
                      color: ColorConst.kWhiteColor,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            ), itemCount: 5,
            
        
          
        ),
      ),
    );
  }
}