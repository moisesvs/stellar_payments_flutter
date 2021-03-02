import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInfoTheme extends StatefulWidget {

  String text;

  TextInfoTheme({this.text, key : Key}): super(key: key);

  @override
  _TextLoginState createState() => _TextLoginState(text : this.text);
}

class _TextLoginState extends State<TextInfoTheme> {

  String text;

  _TextLoginState ({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                this.text,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 90.0),
              child:
                SvgPicture.asset('assets/stellar_logo.svg', 
                                  width: 100, 
                                  height: 30, 
                                  alignment: Alignment.topRight,
                )
            ),
          ],
        ),
      ),
    );
  }
}