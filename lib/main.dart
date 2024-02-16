import 'package:flutter/material.dart';
import 'package:myself/routes/approute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRoute route = AppRoute();
    return MaterialApp(
      onGenerateRoute: route.onGenerateRoute,
      initialRoute: "/splash",
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ), 
    );
  }
}   
 