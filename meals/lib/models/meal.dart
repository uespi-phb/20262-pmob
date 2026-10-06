import 'package:flutter/material.dart';

enum MealComplexity {
  simple('Simples'),
  medium('Média'),
  difficult('Difícil');

  const MealComplexity(this.name);

  final String name;
}

enum DietaryRestriction {
  gluten(
    title: 'Glútem',
    activeIcon: Icons.water_drop_outlined,
    inactiveIcon: Icons.water_drop,
  ),
  lactose(
    title: 'Lactose',
    activeIcon: Icons.breakfast_dining,
    inactiveIcon: Icons.breakfast_dining_outlined,
  ),
  vegetarian(
    title: 'Vegetariano',
    activeIcon: Icons.eco,
    inactiveIcon: Icons.eco_outlined,
  ),
  vegan(
    title: 'Vegano',
    activeIcon: Icons.spa,
    inactiveIcon: Icons.spa_outlined,
  );

  DietaryRestriction({
    required this.title,
    required this.activeIcon,
    required this.inactiveIcon,
  });

  final String title;
  final IconData activeIcon;
  final IconData inactiveIcon;
}

enum MealCost {
  cheap('Barato'),
  regular('Justo'),
  expensive('Caro');

  const MealCost(this.name);

  final String name;
}

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final int durationInMinutes;
  final MealComplexity complexity;
  final MealCost cost;
  final List<DietaryRestriction> restrictions;
  bool isFavorite;

  Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.categories,
    required this.ingredients,
    required this.steps,
    required this.durationInMinutes,
    required this.complexity,
    required this.cost,
    required this.restrictions,
    this.isFavorite = false,
  });
}
