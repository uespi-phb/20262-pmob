import 'package:flutter/material.dart';

import './home_page.dart';

class DicesApp extends StatelessWidget {
  const DicesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dices App',
      theme: ThemeData.from(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
