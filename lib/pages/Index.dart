import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/data/StellarDao.dart';
import '../main.dart';

class Body extends StatelessWidget {

    StellarDao stellarDao = MyApp().getStellarDao;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Stellar App"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                ElevatedButton(
                  onPressed: () {
                  FutureBuilder<void>(
                    future: stellarDao.checkAccount("GC7WS4A4DJOZ3AHQRMG3QOCRLJU3IOGOKSIOP6E5JVW7ZTANRUUKLMN7"),
                    builder: (context, snapshot){
                      print('Ejecutando Stellar...');
                    }
                );},
                  child: Text('Info Account'),
                )
              ],
            ),
          ),
        );
    }
}