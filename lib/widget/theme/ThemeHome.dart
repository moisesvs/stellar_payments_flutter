import 'package:flutter/material.dart';
import '../FloatingAddButton.dart';
import '../VerticalText.dart';
import 'TextInfoTheme.dart';

class ThemeHome extends StatefulWidget {

  String textVertical;
  String textHorizontal;
  Widget bodyWidget;
  Widget floatingButton;
  AddButtonFunction actionFloatingButton;

  ThemeHome ({this.textVertical, 
              this.textHorizontal, 
              this.bodyWidget, 
              this.floatingButton,
              Key key}):super(key: key);

  @override
  _ThemeHomeState createState() => _ThemeHomeState();
}

class _ThemeHomeState extends State<ThemeHome> {

  String textVertical;
  String textHorizontal;
  Widget bodyWidget;
  Widget floatingButton;

  @override
  void initState() {
    super.initState();

    textVertical = widget.textVertical;
    textHorizontal = widget.textHorizontal;
    bodyWidget = widget.bodyWidget;
    floatingButton = widget.floatingButton;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
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
                  VerticalText(text: widget.textVertical, key: UniqueKey()),
                  TextInfoTheme(text: widget.textHorizontal, key: UniqueKey()),
                ]),
                this.bodyWidget
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: floatingButton);
  }
}