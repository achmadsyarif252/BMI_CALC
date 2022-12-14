import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData? icon;
  final Function? onPress;
  RoundedIconButton({
    this.icon,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      onPressed: () => onPress!(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
    );
  }
}
