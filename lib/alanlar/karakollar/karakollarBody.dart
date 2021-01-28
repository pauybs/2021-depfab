import 'package:flutter/material.dart';
import 'package:login/alanlar/ilceler/mapper/showOnMap.dart';
import 'package:login/alanlar/models/hastaneler.dart';
import 'package:login/alanlar/models/karakollar.dart';

class Karakollarbody extends StatelessWidget {
  final double enlem;
  final double boylam;
  final String mahalle;
  const Karakollarbody({this.boylam, this.enlem, this.mahalle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: pamukkale.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 0.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.white24))),
                  child: IconButton(
                    icon: Icon(
                      Icons.map,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                title: Text(
                  '${karakollar[index][0]}',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),

                // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                subtitle: Row(
                  children: <Widget>[
                    Icon(Icons.add_alert_sharp, color: Colors.yellowAccent),
                    Flexible(
                      child: Text('${karakollar[index][1]}',
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    )
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowOnMap(
                            enlem: karakollar[index][2],
                            boylam: karakollar[index][3],
                            mahalle: karakollar[index][1],
                          ),
                        ));
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
