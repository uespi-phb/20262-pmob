import 'package:flutter/material.dart';

import '../models/meal_category.dart';
import './category_card.dart';

class MealCategoryGrid extends StatelessWidget {
  final List<MealCategory> categories;

  const new({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        childAspectRatio: 4 / 3,
        children: categories.map((category) => CategoryCard(category)).toList(),
      ),
    );
  }
}
