import 'dart:collection';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:login/anaSayfaComponents/components/drawler.dart';
import 'package:login/sonDepremler/helpers/map_helpers.dart';

class AnaSayfaBackground extends StatefulWidget {
  final LocationData location;
  AnaSayfaBackground({this.location});
  @override
  _BacgroundState createState() => _BacgroundState();
}

class _BacgroundState extends State<AnaSayfaBackground> {
  GoogleMapController mapController;
  bool _serviceEnabled;
  Float boylam;
  Float enlem;
  Location location = new Location();
  PermissionStatus _permisionGranted;
  LocationData _locationData;
  int _markerIdCounter = 1;
  Set<Marker> _isaretler = HashSet<Marker>();
  bool _isMarker = false;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

/*  void _setMerkers(LatLng point) {
    final String markerIdVal = 'marker_id_$_markerIdCounter';
    _markerIdCounter++;
    setState(() {
    
  }
    );

  void initState() {
    super.initState();
    _checkLocationPermission();
    _locationData = widget.location;
  }*/
  @override
  void _checkLocationPermission() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permisionGranted = await location.hasPermission();
    if (_permisionGranted == PermissionStatus.denied) {
      _permisionGranted = await location.requestPermission();
      if (_permisionGranted != PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "DEBFAB",
          ),
          centerTitle: true,
        ),
        drawer: Menu(),
        body: Stack(children: <Widget>[
          GoogleMap(
            mapType: MapType.terrain,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.7829046, 29.0466272), zoom: 12),
            markers: {
              Marker(
                markerId: MarkerId("Denizli"),
                position: LatLng(37.7829046, 29.0466272),
                infoWindow: InfoWindow(
                    title: "Denizli Merkez",
                    //snippet: 'Şiddet: , Derilink:',
                    onTap: () {
                      showDetailsOnBrowser("Denizli");
                    }),
              )
            },
          ),
        ]),
      ),
    );
  }
}
