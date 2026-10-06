import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealFilter {
  final DietaryRestriction id;
  final String title;
  final String subtitle;
  final IconData activeIcon;
  final IconData inactiveIcon;
  bool state;

  MealFilter({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.activeIcon,
    required this.inactiveIcon,
    this.state = false,
  });
}

class AppProvider extends ChangeNotifier {
  final List<MealFilter> filters = [
    MealFilter(
      id: DietaryRestriction.gluten,
      title: DietaryRestriction.gluten.title,
      subtitle: 'Filtra refeições com glútem',
      activeIcon: Icons.water_drop_outlined,
      inactiveIcon: Icons.water_drop,
    ),
    MealFilter(
      id: DietaryRestriction.lactose,
      title: DietaryRestriction.lactose.title,
      subtitle: 'Filtra refeições com lactose',
      activeIcon: Icons.breakfast_dining,
      inactiveIcon: Icons.breakfast_dining_outlined,
    ),
    MealFilter(
      id: DietaryRestriction.vegetarian,
      title: DietaryRestriction.vegetarian.title,
      subtitle: 'Filtra refeições vegetarianas',
      activeIcon: Icons.eco,
      inactiveIcon: Icons.eco_outlined,
    ),
    MealFilter(
      id: DietaryRestriction.vegan,
      title: DietaryRestriction.vegan.title,
      subtitle: 'Filtra refeições veganas',
      activeIcon: Icons.spa,
      inactiveIcon: Icons.spa_outlined,
    ),
  ];

  List<DietaryRestriction> activeDietaryRestrictions() {
    return filters.where((filter) => filter.state).map((filter) => filter.id).toList();
  }

  MealFilter mealFilterByDietaryRestriction(DietaryRestriction restriction) {
    return filters.firstWhere((elem) => elem.id == restriction);
  }

  void toggleFavorite(Meal meal) {
    meal.isFavorite = !meal.isFavorite;
    notifyListeners();
  }

  void toggleFilterState(MealFilter filter) {
    filter.state = !filter.state;
    notifyListeners();
  }
}
