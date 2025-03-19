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

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 250),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            color: const Color.fromARGB(255, 145, 115, 6),
          ),
          child: TextButton(
            onPressed: () {
              rollDice();
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28),
            ),
            child: Text('ROLL'),
          ),
        ),
      ],
    );
  }
}
