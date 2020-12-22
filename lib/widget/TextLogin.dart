import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextLogin extends StatefulWidget {
  @override
  _TextLoginState createState() => _TextLoginState();
}

class _TextLoginState extends State<TextLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
            ),
            Center(
              child: Text(
                'A world of possibility in an app',
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