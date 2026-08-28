import 'package:flutter/material.dart';

import './home_page.dart';

class MyCardApp extends StatelessWidget {
  const MyCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
