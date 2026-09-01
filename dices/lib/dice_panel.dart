import 'dart:math';

import 'package:flutter/material.dart';

import './dice_widget.dart';

class DicePanel extends StatefulWidget {
  const DicePanel({super.key});

  @override
  State<DicePanel> createState() => _DicePanelState();
}

class _DicePanelState extends State<DicePanel> {
  final Random rnd = Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 4;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          leftDiceNumber = rnd.nextInt(6) + 1;
          rightDiceNumber = rnd.nextInt(6) + 1;
        });
        debugPrint('TAP!!!! [l=$leftDiceNumber, r=$rightDiceNumber]');
      },
      child: Center(
        child: Row(
          children: [DiceWidget(leftDiceNumber), DiceWidget(rightDiceNumber)],
        ),
      ),
    );
  }
}
