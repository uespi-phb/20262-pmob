import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealProvider extends ChangeNotifier {
  void toggleFavorite(Meal meal) {
    meal.isFavorite = !meal.isFavorite;
    notifyListeners();
  }
}
