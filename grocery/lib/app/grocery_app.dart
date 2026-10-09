import 'package:flutter/material.dart';

import '../pages/sign_in_page.dart';
import 'theme_app.dart';

class GroceryApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.ligth(),
      home: SignInPage(),
    );
  }
}
