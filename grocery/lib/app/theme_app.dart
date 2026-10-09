import 'package:flutter/material.dart';

abstract final class ThemeApp {
  static ThemeData ligth({
    MaterialColor primaryColor = Colors.green,
  }) {
    return ThemeData(
      useMaterial3: true,
      primaryColor: primaryColor,
    );
  }
}
