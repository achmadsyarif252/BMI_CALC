import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screens/input_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultScreen extends StatelessWidget {
  static const routeName = '/result-page';
  @override
  Widget build(BuildContext context) {
    final bmi = ModalRoute.of(context)!.settings.arguments as CalculatorBrain;
    final String bmiResult = bmi.getResult();
    final String interpreted = bmi.getInterpretation();
    final String calculate = bmi.calculateBMI();
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                bmiResult,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiResult.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      calculate,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpreted,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.of(context).pushNamed(InputPage.routeName);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
