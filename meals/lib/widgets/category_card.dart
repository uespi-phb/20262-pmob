import 'package:flutter/material.dart';
import 'package:meals/pages/category_meals_page.dart';

import '../models/meal_category.dart';

class CategoryCard extends StatelessWidget {
  final MealCategory category;

  const CategoryCard(
    this.category, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => CategoryMealsPage(),
        //   ),
        // );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryMealsPage(category),
          ),
        );
      },

      borderRadius: BorderRadius.circular(8.0),
      hoverColor: Colors.green,
      splashColor: Theme.of(context).primaryColor,

      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(8.0),
          gradient: LinearGradient(
            colors: [
              category.color.withValues(alpha: 0.6),
              category.color,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        padding: EdgeInsets.all(15.0),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
