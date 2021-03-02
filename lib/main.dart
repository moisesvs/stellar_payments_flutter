import 'package:flutter/material.dart';
import './pages/StartPage/StartPage.dart';
import './pages/InfoAccount/InfoAccount.dart';
import './pages/CreateAccount/CreateAccount.dart';
import './pages/MakeTransaction/MakeTransactions.dart';
import './data/StellarDao.dart';
import './data/TransferenceUser.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static final StellarDao _sdkStellar = StellarDao();
  static TransferenceUser _transference = TransferenceUser();

  StellarDao get getStellarDao => _sdkStellar;
  TransferenceUser get getTransferenceUser => _transference;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stellar Transfer',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  StartPage(),
        '/infoAccount': (context) => InfoAccount(),
        '/createAccount': (context) => CreateAccount(),
        '/makeTransaction': (context) => MakeTransactions(),
      },
    );
  }
}