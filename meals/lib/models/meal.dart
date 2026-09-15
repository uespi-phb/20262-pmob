enum MealComplexity {
  simple,
  medium,
  difficult,
}

enum MealCost {
  cheap,
  regular,
  expensive,
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
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isFavorite;

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
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    this.isFavorite = false,
  });
}
