import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final int diceNumber;
  final VoidCallback? onTap;

  const DiceWidget({super.key, required this.diceNumber, this.onTap});

  @override
  Widget build(Object context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('assets/images/dice$diceNumber.png'),
        ),
      ),
    );
  }
}
