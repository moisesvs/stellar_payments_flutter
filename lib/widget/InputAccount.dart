import 'package:flutter/material.dart';

class InputAccount extends StatefulWidget {
  @override
  _InputAccountState createState() => _InputAccountState();
}

class _InputAccountState extends State<InputAccount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 2,
        child: TextField(
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            hintStyle: TextStyle(
              fontSize: 25,
              color: Colors.white70,
            ),
            labelText: 'Account Number',
            labelStyle: TextStyle(
              fontSize: 25,
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}