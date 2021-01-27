import 'package:flutter/material.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/SignUp/background.dart';
import 'package:login/Screens/SignUp/or_divider.dart';
import 'package:login/anaSayfaComponents/components/background.dart';
import 'package:login/components/already_have_an_account_acheck.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/constants.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Kayıt Ol",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          Image(
            image: AssetImage("assets/images/YeniLogo1.png"),
            width: 140,
            height: 140,
          ),
          RoundedInputField(
            hintText: "E-mail Adresiniz",
            onSaved: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Kayıt Ol",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AnaSayfaBackground();
                  },
                ),
              );
            },
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.08,
                    color: kPrimaryLightColor,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  "assets/images/facebook.png",
                  width: size.width * 0.08,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
