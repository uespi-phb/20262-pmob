import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(meal.title);
  }
}
