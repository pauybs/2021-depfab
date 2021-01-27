import 'dart:async';
import 'package:login/anaSayfaComponents/components/background.dart';
import 'package:login/sonDepremler/helpers/map_helpers.dart';
import 'package:login/sonDepremler/models/Earthquake.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:login/sonDepremler/views/sonDepremlerAnaSayfa.dart';

class ShowAllEarthquakes extends StatefulWidget {
  ShowAllEarthquakes({Key key}) : super(key: key);

  @override
  _ShowAllEarthquakesState createState() => _ShowAllEarthquakesState();
}

class _ShowAllEarthquakesState extends State<ShowAllEarthquakes> {
  List<Marker> markers = [];
  Earthquake earthquake = Earthquake();

  @override
  void initState() {
    super.initState();
    earthquake.getAll().then((response) {
      response.forEach((value) {
        setState(() {
          markers.add(new Marker(
            markerId: MarkerId(UniqueKey().toString()),
            infoWindow: InfoWindow(
                title: value.place,
                snippet:
                    'Şiddet: ${value.ml}, Derinlik: ${value.depth},Tarih:${value.date}',
                onTap: () {
                  showDetailsOnBrowser(value.place);
                }),
            position: LatLng(
                double.parse(value.latitude), double.parse(value.longitude)),
          ));
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar,
      bottomNavigationBar: Container(
        height: 55.0,
        child: BottomAppBar(
          color: Color.fromRGBO(58, 66, 86, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnaSayfaBackground()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.blur_on, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SonDepremler()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.hotel, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.account_box, color: Colors.white),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      body: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(38.423733, 27.142826), zoom: 8),
          mapType: MapType.terrain,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          markers: Set.of(markers)),
    );
  }

  final topAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text("Bütün Depremler"),
  );
}
