import 'package:flutter/material.dart';
import 'package:login/anaSayfaComponents/components/background.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnaSayfaBackground(),
    );
  }
}
