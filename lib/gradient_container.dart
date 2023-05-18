import 'package:flutter/material.dart';
import 'package:roll_a_dice_app/dice_roller.dart';
// import 'package:roll_a_dice_app/styled_text.dart';

// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

// const makes sure the value does not get changes over time in the code
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// Creating a custom widget
class GradientContainer extends StatelessWidget {
  // making a constructor function
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  void rollDice() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // child: StyledText('Hello World!'),
        child: DiceRoller(),
      ),
    );
  }
}


// const cannot be used when there is a variable in the widget
// we made this into a reusable widget by removing the hardcoded gradient colours before taking the different colors as input themselves
// Widgets that do have internal changing data should not be a stateless widget.
// If the values of the widget are supposed to be pre defined then we can use StateLess widget