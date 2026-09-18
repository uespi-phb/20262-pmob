import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailPage extends StatelessWidget {
  final Meal meal;

  const new(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}
