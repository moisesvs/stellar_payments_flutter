import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/widget/StepperLogin.dart';
import '../widget/TextLogin.dart';
import '../widget/VerticalText.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.grey, Colors.blueGrey]),
        ),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(children: <Widget>[
                  VerticalText(text: "Sharing"),
                  TextLogin()
                ]),
                //InputAccount(),
                //ButtonApp(textButton: "Set account"),
                StepperLogin()
              ],
            ),
          ],
        ),
      ),
    );
  }
}