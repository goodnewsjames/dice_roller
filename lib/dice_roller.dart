import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currenDiceRoll = 2;
  // var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      currenDiceRoll = randomizer.nextInt(6) + 1;
      // var diceRoll = Random().nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          //  activeDiceImage,
          'assets/images/dice-$currenDiceRoll.png',
          width: 200,
        ),
        SizedBox(height: 10),
        TextButton(
          onPressed: rollDice,
          child: Text('Row Dice'),
          style: TextButton.styleFrom(
            // padding: EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}
