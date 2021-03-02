import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/pages/StartPage/StartPageButtons.dart';
import 'package:stellar_crypto_app/widget/theme/ThemeHome.dart';

class StartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ThemeHome(
      textVertical: "Sharing",
      textHorizontal: "A world of possibility in an app",
      bodyWidget: StartPageButtons(),
      key: UniqueKey()
    );
  }
}