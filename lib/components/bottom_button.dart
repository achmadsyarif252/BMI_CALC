import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function? onTap;
  final String? buttonTitle;

  BottomButton({
    required this.onTap,
    required this.buttonTitle,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            buttonTitle!,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
