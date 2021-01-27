import 'dart:ffi';

import 'package:login/anaSayfaComponents/components/drawler.dart';
import 'package:login/sonDepremler/arguments/EarthquakeDetail.dart';
import 'package:login/sonDepremler/helpers/map_helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowOnMap extends StatefulWidget {
  final double enlem;
  final double boylam;
  final String mahalle;
  ShowOnMap({this.enlem, this.boylam, this.mahalle});
  @override
  _EarthquakeOnMapState createState() => _EarthquakeOnMapState();
}

class _EarthquakeOnMapState extends State<ShowOnMap> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.mahalle,
          ),
          centerTitle: true,
        ),
        drawer: Menu(),
        body: GoogleMap(
          mapType: MapType.satellite,
          initialCameraPosition: CameraPosition(
              target: LatLng(widget.enlem, widget.boylam), zoom: 12),
          markers: {
            Marker(
              markerId: MarkerId(widget.mahalle),
              position: LatLng(widget.enlem, widget.boylam),
              infoWindow: InfoWindow(
                  title: widget.mahalle,
                  //snippet: 'Şiddet: , Derilink:',
                  onTap: () {
                    showDetailsOnBrowser(widget.mahalle);
                  }),
            )
          },
        ),
      ),
    );
  }
}
