import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  // To rexecute the build function
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  build(context) {
    return Column(
      // To make the whole dice in total center.
      // MainAxisSize.max is the by default value (takes the max possible value as a column)
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice_images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
            height:
                20), // Does nothing but gives a box between dice and TextButton
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: const Color.fromARGB(255, 38, 3, 97),
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll the dice'),
          // generally we keep our widget arguments last
        )
      ],
    );
  }
}

// We do not add a build method in stateful widget
// We add a createState method 
// When using stateful widget we have to use 2 different classes