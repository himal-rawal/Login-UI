import 'package:flutter/material.dart';
import 'package:uiseries1/Screens/homescreen.dart';
import 'package:uiseries1/Screens/signup_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      home: SignUpPage(),
    );
  }
}
