import 'package:flutter/material.dart';
import 'package:meals/data/database.dart';

import '../models/meal_category.dart';
import './meal_card.dart';

class CategoryMealsList extends StatelessWidget {
  final MealCategory mealCategory;

  const CategoryMealsList(
    this.mealCategory, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryMeals = Database.mealsByCategory(mealCategory.id);

    debugPrint('CategoryMealsList.build()');

    return ListView.builder(
      itemCount: categoryMeals.length,
      itemBuilder: (context, index) => MealCard(categoryMeals.elementAt(index)),
    );
  }
}

class FavoriteMealsList extends StatelessWidget {
  const FavoriteMealsList({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteMeals = Database.favoriteMeals();

    debugPrint('FavoriteMealsList.build()');

    return ListView.builder(
      itemCount: favoriteMeals.length,
      itemBuilder: (context, index) => MealCard(favoriteMeals.elementAt(index)),
    );
  }
}
