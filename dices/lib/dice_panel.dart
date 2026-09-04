import 'dart:math';

import 'package:flutter/material.dart';

import './dice_widget.dart';

class DicePanel extends StatefulWidget {
  const DicePanel({super.key});

  @override
  State<DicePanel> createState() => _DicePanelState();
}

class _DicePanelState extends State<DicePanel> {
  final rnd = Random();

  int leftDiceNumber = 0;
  int rightDiceNumber = 0;

  @override
  void initState() {
    super.initState();

    leftDiceNumber = _rollDice();
    rightDiceNumber = _rollDice();
  }

  int _rollDice() {
    return rnd.nextInt(6) + 1;
  }

  void _rollBothDices() {
    _rollLeftDice();
    _rollRightDice();
  }

  void _rollLeftDice() {
    setState(() {
      leftDiceNumber = _rollDice();
    });
  }

  void _rollRightDice() {
    setState(() {
      rightDiceNumber = _rollDice();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _rollBothDices,
      behavior: HitTestBehavior.opaque,
      child: Center(
        child: Row(
          children: [
            DiceWidget(diceNumber: leftDiceNumber, onTap: _rollLeftDice),
            DiceWidget(diceNumber: rightDiceNumber, onTap: _rollRightDice),
          ],
        ),
      ),
    );
  }
}
