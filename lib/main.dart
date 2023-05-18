import 'package:flutter/material.dart';
// import 'gradient_container.dart';   // For same folder dart files
import 'package:roll_a_dice_app/gradient_container.dart';

void main() {
  // const help dart optimize runtime performance
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: GradientContainer(
            [Colors.amber, Colors.green, Color.fromARGB(255, 0, 255, 102)]),
      ),
    ),
  ); // MaterialApp is built-in widget provided by flutter. It does a lot of set up behind the scenes.
}




// MaterialApp is the root widget
// Scaffold widget helps set up the screen beautifully
// Built in widgets are classes and also we create our widgets by the helps of classes.
// Because Dart is an object oriented language.
// Stateless widget adds a lot of data behind the scenes when you inherit it for other classes.
// You should add a method build after inheriting stateless widget
// build returns a widget value
