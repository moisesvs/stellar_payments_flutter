import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/data/StellarDao.dart';
import 'package:stellar_crypto_app/pages/LoginPage.dart';

class MakeTransactions extends StatelessWidget {

  static final StellarDao _sdkStellar = StellarDao();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stellar demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      //home: Body(),
      initialRoute: '/',
      routes: {
        '/': (context) =>  LoginPage(),
        '/makeTransaction': (context) => MakeTransactions(),
      },
    );
  }
}