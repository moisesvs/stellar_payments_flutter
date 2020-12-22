import 'package:flutter/material.dart';

class ButtonApp extends StatefulWidget {

  String textButton;
  VoidCallback onPressed;

  ButtonApp ({this.textButton, this.onPressed});

  @override
  _ButtonLoginState createState() => _ButtonLoginState(textButton: textButton, onPressed: onPressed);
}

class _ButtonLoginState extends State<ButtonApp> {

  String textButton;
  VoidCallback onPressed;

  _ButtonLoginState ({this.textButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        alignment: Alignment.bottomLeft,
        height: 50,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                this.textButton,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
              padding: const EdgeInsets.only(left: 10),
              child:
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black54,
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}