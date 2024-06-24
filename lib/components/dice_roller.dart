import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/generic_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 1;

  void _rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 28,
        ),
        TextButton(
          onPressed: _rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.indigo,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
          ),
          child: const GenericText('Roll Dice'),
        )
      ],
    );
  }
}
