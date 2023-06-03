import 'package:dice_app/dice_roller.dart';
import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
const  GradientContainer(this.leftColor, this.rightColor, {super.key});

  final Color leftColor;
  final Color rightColor;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [leftColor, rightColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
