import 'package:dice_roller/dice_roller.dart';
import 'package:dice_roller/gradient_container.dart';
import 'package:flutter/material.dart';

var image = 'assets/images/dice-1.png';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 131, 39, 206),
            Color.fromARGB(255, 214, 49, 211),
          ],
          child: DiceRoller(),
        ),
      ),
    ),
  );
}
