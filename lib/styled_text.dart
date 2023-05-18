import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Color.fromARGB(255, 72, 2, 10),
        fontSize: 28,
      ),
    );
  }
}

// we made this into a reusable widget by removing the hardcoded text before taking the text as input itself