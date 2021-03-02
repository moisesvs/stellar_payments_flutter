import 'package:flutter/material.dart';

class VerticalText extends StatefulWidget {

  String text;

  VerticalText({this.text, Key key}):super(key:key);

  @override
  _VerticalTextState createState() => _VerticalTextState();
}

class _VerticalTextState extends State<VerticalText> {

  String text;

  _VerticalTextState({this.text}); 

  @override
  void initState() {
    super.initState();
    text = widget.text;
  }

  @override
  void didUpdateWidget(VerticalText oldWidget) {
      if(text != widget.text) {
          setState((){
              this.text = widget.text;
          });
      }

      super.didUpdateWidget(oldWidget);
  }

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