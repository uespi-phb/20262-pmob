import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final int diceNumber;

  const DiceWidget(this.diceNumber, {super.key});

  @override
  Widget build(Object context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Image.asset('assets/images/dice$diceNumber.png'),
      ),
    );
  }
}
