import 'package:login/sonDepremler/views/earthquake_on_map.dart';
import 'package:login/sonDepremler/views/home.dart';
import 'package:login/sonDepremler/views/show_all_earthquakes.dart';
import 'package:login/sonDepremler/views/what_is_earthquake.dart';
import 'package:flutter/material.dart';

class SonDepremler extends StatelessWidget {
  const SonDepremler({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Depremler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red[900]),
      home: Home(),
      routes: {
        '/show-all-earthquakes': (context) => ShowAllEarthquakes(),
        '/earthquake-on-map': (context) => EarthquakeOnMap(),
        '/what-is-earthquake': (context) => WhatIsEarthquake()
      },
    );
  }
}
