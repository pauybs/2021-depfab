import 'package:flutter/material.dart';
import 'package:login/alanlar/ilceler/pamukkale.dart';
import 'package:login/alanlar/listeler.dart';

class Makebody extends StatelessWidget {
  const Makebody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: ilceler.length,
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
                  padding: EdgeInsets.only(right: 12.0),
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
                  '${ilceler[index][0]}',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                subtitle: Row(
                  children: <Widget>[
                    Icon(Icons.add_alert_sharp, color: Colors.yellowAccent),
                    Text('${ilceler[index][2]}' + " Deprem bölgesi",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pamukkale()));
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
