import '../models/meal.dart';
import './categories.dart';
import './meals.dart';

class Database {
  static const categories = dataCategories;
  static final meals = dataMeals;

  static List<Meal> mealsByCategory(String categoryId) {
    return meals.where((meal) => meal.categories.contains(categoryId)).toList();
  }
}
