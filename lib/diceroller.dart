import 'dart:math';

import 'package:flutter/material.dart';

final randomiZer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var currentDiceRoll = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Image.asset("assets/images/dice-$currentDiceRoll.png", width: 160),
        SizedBox(height: 17),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black87,
            textStyle: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }

  void rollDice() {
    //generate random number int >= 7
    setState(() {
      currentDiceRoll = randomiZer.nextInt(6) + 1;
    });
    //
  }
}
