import 'package:flutter/material.dart';
import 'package:login/Screens/Login/components/background.dart';
import 'package:login/Screens/SignUp/signup_screens.dart';
import 'package:login/anaSayfaComponents/components/background.dart';
import 'package:login/components/already_have_an_account_acheck.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

class Body extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "OTURUM AÇ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image(
              image: AssetImage("assets/images/YeniLogo1.png"),
              width: 130,
              height: 130,
            ),
            RoundedInputField(
              hintText: "E-mail Adresiniz",
              onSaved: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "OTURUM AÇ",
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
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
