import 'package:flutter/material.dart';

import '../models/meal_category.dart';
import '../widgets/meals_list.dart';

class CategoryMealsPage extends StatelessWidget {
  final MealCategory category;

  const CategoryMealsPage(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.title), centerTitle: true),
      body: CategoryMealsList(category),
    );
  }
}
