
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:login/anaSayfaComponents/components/drawler.dart';




class AnaSayfaBackground extends StatefulWidget {
    final LocationData location;
    AnaSayfaBackground({this.location});
  @override
  _BacgroundState createState() => _BacgroundState();
}

class _BacgroundState extends State<AnaSayfaBackground> {
  GoogleMapController mapController;
  bool _serviceEnabled;
  Location location=new Location();
  PermissionStatus _permisionGranted;
  LocationData _locationData;
 int _markerIdCounter=1;
   Set<Marker>_isaretler=HashSet<Marker>();
  bool _isMarker=false;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  void _setMerkers(LatLng point){
    final String markerIdVal ='marker_id_$_markerIdCounter';
    _markerIdCounter++;
    setState(() {
      print('Marker | Latitude: ${point.latitude} Longitude: ${point.longitude}');
      _isaretler.add(
        Marker(markerId: MarkerId(markerIdVal),
        position: point)
      );
    });
  }
  @override
  void initState(){
    super.initState();
    _checkLocationPermission();
    _locationData=widget.location;
      }
      
   void _checkLocationPermission() async {
      _serviceEnabled=await location.serviceEnabled();
      if(!_serviceEnabled){
        _serviceEnabled=await location.requestService();
        if(!_serviceEnabled){
          return;
        }
      }
      _permisionGranted=await location.hasPermission();
      if( _permisionGranted==PermissionStatus.denied){
        _permisionGranted = await location.requestPermission();
        if(_permisionGranted!=PermissionStatus.granted){
          return;
        }
      }
      _locationData=await location.getLocation();
    }

      Widget build(BuildContext context) {
        return MaterialApp(
          home: Scaffold(
              appBar: AppBar(
                title: Text(
                  "Debfab",
                ),
                centerTitle: true,
              ),
              drawer: Menu(),
              body: Stack(
               children:<Widget>[ GoogleMap(
                 initialCameraPosition: CameraPosition(target: LatLng(_locationData.latitude,_locationData.longitude),
                 zoom: 16,),
                 markers: _isaretler,
                onMapCreated: _onMapCreated,
                myLocationEnabled: true,
                mapType: MapType.hybrid,
                onTap: (point){
                  if(_isMarker){
                    setState(() {
                      _isaretler.clear();
                      _setMerkers(point);
                    });
                  }
                },
               
              ),
               ]
              ),
               
          ),
        );
      }
    }
    
    
