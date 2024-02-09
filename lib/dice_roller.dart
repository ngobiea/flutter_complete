import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_complete/styled_text.dart';
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StyledText('dice $diceNumber'),
        const SizedBox(height: 10),
        Image(
          image: AssetImage(
            'assets/images/dice-$diceNumber.png',
          ),
          width: 200,
        ),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {
              setState(() {
                diceNumber = Random().nextInt(6) + 1;
              });
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
