import 'package:flutter/material.dart';

import './info_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/dev.png'),
            ),
            Text(
              'Fulano de Tal dos Azóis',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'DEV FULL STACK',
              style: TextStyle(color: Colors.white54, letterSpacing: 4.0),
            ),
            Divider(
              thickness: 1.0,
              color: Colors.white24,
              indent: 100.0,
              endIndent: 100.0,
            ),
            InfoCard(icon: Icons.phone, data: '+55 86 98765-4321'),
            InfoCard(icon: Icons.email, data: 'fulano@email.com'),
          ],
        ),
      ),
    );
  }
}
