import 'package:flutter/material.dart';

import './dice_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rolando Dados')),
      body: DicePanel(),
    );
  }
}
