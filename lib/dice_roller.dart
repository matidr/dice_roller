import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  @override
  Widget build(context) {
    return Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-$currentDiceRoll.png',
                width: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  final randomNumber = randomizer.nextInt(6) + 1;
                  setState(() {
                    currentDiceRoll = randomNumber;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 240, 64),
                  padding: const EdgeInsets.only(
                    top: 16,
                    bottom: 16,
                    left: 32,
                    right: 32,
                  ),
                ),
                child: const Text(
                  'Roll Dice',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 214, 49, 211),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
  }
}