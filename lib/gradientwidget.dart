import 'package:flutter/material.dart';
import 'package:quiz_test/diceroller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer(this.colors, {super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: .topLeft,
          end: .bottomRight,
          colors: colors,
        ),
      ),
      child: Center(child: DiceRoll()),
    );
  }
}
