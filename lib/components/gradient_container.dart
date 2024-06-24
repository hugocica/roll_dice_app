import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key})
      : colors = [
          Colors.deepPurple,
          Colors.deepOrange,
        ];

  GradientContainer.bluish({super.key}) : colors = [Colors.indigo, Colors.blue];

  final List<MaterialColor> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
