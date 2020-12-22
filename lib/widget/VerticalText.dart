import 'package:flutter/material.dart';

class VerticalText extends StatefulWidget {

  String text;

  VerticalText({this.text});

  @override
  _VerticalTextState createState() => _VerticalTextState(text: text);
}

class _VerticalTextState extends State<VerticalText> {

  String text;

  _VerticalTextState({this.text}); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}