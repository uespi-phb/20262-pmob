import 'package:flutter/material.dart';
import 'package:meals/app/colors.dart';
import 'package:meals/providers/meal_provider.dart';
import 'package:provider/provider.dart';

import '../pages/home_page.dart';

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MealProvider>(
      create: (context) => MealProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColors.primaryColor),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.foregroundColor,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}
