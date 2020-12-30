import 'package:flutter/material.dart';
import 'package:login/Screens/Welcome/welcome_screen.dart';
import 'package:login/constants.dart';

import 'Screens/Welcome/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  get kPrimaryColor => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }

  ThemeData({primaryColor, scaffoldBackgroundColor}) {}
}
