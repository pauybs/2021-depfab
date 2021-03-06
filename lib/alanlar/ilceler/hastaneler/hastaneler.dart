import 'package:flutter/material.dart';
import 'package:login/alanlar/ilceler/hastaneler/hastanelerBody.dart';
import 'package:login/alanlar/listeler.dart';
import 'package:login/anaSayfaComponents/components/background.dart';
import 'package:login/anaSayfaComponents/components/drawler.dart';
import 'package:login/sonDepremler/views/sonDepremlerAnaSayfa.dart';

class Hastaneler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: new ListPage(title: ""),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      drawer: Menu(),
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
      body: Hastanebody(),
    );
  }
}

final topAppBar = AppBar(
  elevation: 0.1,
  backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
  title: Text("Hastaneler"),
);

nufusCek() {
  for (int i = 0; i < ilceler.length; i++) {
    String nufus = ilceler[i][1].toString();
    print(i);
    return nufus;
  }
}
