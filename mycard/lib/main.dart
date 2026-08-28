import 'package:flutter/material.dart';

void main() {
  runApp(MyCardApp());
}

class MyCardApp extends StatelessWidget {
  const MyCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

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
            Text('IMAGEM'),
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
            Text('LINHA HORIZONTAL'),
            Text('CARD #1'),
            Text('CARD #2'),
          ],
        ),
      ),
    );
  }
}
