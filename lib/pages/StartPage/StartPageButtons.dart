import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/widget/ButtonApp.dart';

class StartPageButtons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              ButtonApp(textButton: "Create account", onPressed: () => {
                  Navigator.pushNamed(context, '/makeTransaction')
              }), 
              ButtonApp(textButton: "Make trasanction", onPressed: () => {
                
              }),
              ButtonApp(textButton: "Set money", onPressed: () => {
                
              }),
            ],
          ),
        );
  }
}