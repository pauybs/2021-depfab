import 'package:flutter/material.dart';
import 'package:login/Screens/Welcome/welcome_screen.dart';
import 'package:login/alanlar/riskliAlanlar.dart';

import 'package:login/sonDepremler/views/sonDepremlerAnaSayfa.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 16.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Bilinmiyor"),
            accountEmail: Text("bilinmiyor"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              /* child: Image.asset(
                "login/assets/images/LOGO.png",
              ),*/
            ),
            otherAccountsPictures: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.account_box_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
          ListTile(
            title: new Text("Yerler"),
            onTap: () {},
            leading: new Icon(Icons.app_registration),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SonDepremler()),
              );
            },
            title: new Text("Son Depremler"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RiskliAlanlar()),
              );
            },
            title: new Text("Riskli Alanlar"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("Toplanma Alanları"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("Çadırkent Alanları"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("Yollar"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title:
                new Text("Öncelikli Kamu Kurumları(Sağlık,Eğitim,Kamu Hizmeti"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("En Yakın Kamu Kuruluşları"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("Afet Lokasyonu"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: new Text("İhtiyaçlar"),
            trailing: new Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
