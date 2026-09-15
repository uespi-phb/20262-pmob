import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_card.dart';

import '../data/database.dart';
import '../models/meal_category.dart';

class CategoryMealsPage extends StatelessWidget {
  final MealCategory category;

  const CategoryMealsPage(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    final categoryMeals = Database.mealsByCategory(category.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) => MealCard(categoryMeals.elementAt(index)),
      ),
    );
  }
}
