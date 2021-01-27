import 'package:flutter/material.dart';
import 'dart:async';

import 'package:login/Screens/girisEkrani/components/background.dart';
import 'package:login/anaSayfaComponents/screens/anasayfa.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () async {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Anasayfa()));
    });
    Size size = MediaQuery.of(context).size;
    // Bu boyut bize ekranımızın toplam yüksekliğini ve genişliğini sağlar
    return Backgraund(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.04),
            Image(
              image: AssetImage("assets/images/YeniLogo1.png"),
              width: 400,
              height: 400,
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
