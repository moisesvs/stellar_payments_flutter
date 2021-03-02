import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/data/StellarDao.dart';
import 'package:stellar_crypto_app/widget/FloatingAddButton.dart';
import 'package:stellar_crypto_app/widget/StepperLogin.dart';
import 'package:stellar_crypto_app/widget/theme/ThemeHome.dart';

class MakeTransactions extends StatefulWidget {

  @override
  _MakeTransactionsState createState() => _MakeTransactionsState();

}

class _MakeTransactionsState extends State<MakeTransactions> {

  int number;
  StreamController<int> streamController = new StreamController();

  @override
  void initState() {
    super.initState();

    getData();
    streamController.stream.listen((data) {
      print("DataReceived: " + data.toString());
      setState(() {
        number = data;
      });
    }, onDone: () {
      print("Task Done");
    }, onError: (error) {
      print("Some Error");
    });
  }

  @override
  void dispose() {
    streamController.close(); //Los Streams deben cerrarse cuando no se necesiten
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeHome(
      textVertical: "Sharing",
      textHorizontal: "A world of possibility in an app" + number.toString(),
      bodyWidget: StepperLogin(),
      floatingButton: FloatingAddButton(action: startCreateAccount),
      key: UniqueKey()
    );
  }

  startCreateAccount () {
      Navigator.pushNamed(context, '/createAccount');
  }

  Future<String> getData() async {
    while (true) {
      await Future.delayed(Duration(seconds: 3)); // Retraso simulado 
      streamController.add(Random().nextInt(100));
    }
  }

}