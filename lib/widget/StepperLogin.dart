import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/data/TransferenceUser.dart';
import 'package:stellar_crypto_app/widget/InputAccount.dart';
import 'ButtonApp.dart';

class StepperLogin extends StatefulWidget {
  @override
  _StepperLoginState createState() => _StepperLoginState();
}

class _StepperLoginState extends State<StepperLogin> {

  int _radioValue = -1;
  int _currentStep = 0;
  final int stepLimit = 3;
  TransferenceUser transferenceUser = TransferenceUser();

  void _handleRadioValueChange(int value) {
        transferenceUser.net = value;
        setState(() {
          _radioValue = value;
        });
  }

  Widget _buildContinueButton (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ButtonApp(
            onPressed: onStepContinue,
            textButton: "Continue"
          )
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Container(
              child: Stepper(
                steps: [
                  Step(
                    title: Text("Select Stellar NET"),
                    content: Column(
                      children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                                    value: 0,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                            ),
                            Text(
                              'TestNet',
                              style: new TextStyle(fontSize: 16.0),
                          )]),                          
                          Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _radioValue,
                              onChanged: _handleRadioValueChange,
                            ),
                            Text(
                              'MainNet',
                              style: new TextStyle(fontSize: 16.0),
                          )]),
                          
                      ]
                    )
                  ),
                  Step(
                    title: Text("Set Stellar origin account"),
                    content: InputAccount(),
                  ),
                  Step(
                    title: Text("Set Stellar destination account"),
                    content: InputAccount(),
                  ),
                  Step(
                    title: Text("Amount transaction"),
                    content: InputAccount(),
                  )
                ],
                currentStep: _currentStep,
                onStepTapped: (index) {
                  setState(() {
                    _currentStep = index;
                  });
                },
                onStepCancel: () {
                  print("You are clicking the cancel button.");
                },
                onStepContinue: () {
                  setState(() {
                    if (!(_currentStep >= stepLimit)) {
                      _currentStep++;
                    }
                  });
                },
                controlsBuilder: _buildContinueButton,
              ),
            ),
    );
  }
}