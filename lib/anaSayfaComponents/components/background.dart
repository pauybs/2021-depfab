import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:login/anaSayfaComponents/components/drawler.dart';

MapType _defaultMapType = MapType.terrain;
Completer<GoogleMapController> _controller = Completer();

class AnaSayfaBackground extends StatefulWidget {
  @override
  _BacgroundState createState() => _BacgroundState();
}

class _BacgroundState extends State<AnaSayfaBackground> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(37.7852516, 29.0910065);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "EarthQuege",
            ),
            centerTitle: true,
          ),
          drawer: Menu(),
          body: GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationEnabled: true,
            mapType: _defaultMapType,
            initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
          )),
    );
  }
}
