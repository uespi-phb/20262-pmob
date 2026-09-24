import 'package:flutter/material.dart';
import 'package:meals/providers/meal_provider.dart';
import 'package:provider/provider.dart';

import '../models/meal.dart';
import '../widgets/meal_info_card.dart';

class MealDetailPage extends StatelessWidget {
  final Meal meal;

  const MealDetailPage(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('MealDetailPage.build()');

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final mealProvider = Provider.of<MealProvider>(context, listen: false);

          debugPrint('fav: ${meal.isFavorite}');

          mealProvider.toggleFavorite(meal);

          debugPrint('fav: ${meal.isFavorite}');
        },
        child: Consumer<MealProvider>(
          builder: (_, _, _) {
            debugPrint('Counsumer.builder()');
            return Icon(meal.isFavorite ? Icons.star_rate : Icons.star_outline);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
              webHtmlElementStrategy: WebHtmlElementStrategy.fallback,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: MealInfoCard(
                title: 'Ingredientes',
                itemCount: meal.ingredients.length,
                itemBuilder: (context, index) => Text(meal.ingredients[index]),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: MealInfoCard(
                title: 'Passos',
                itemCount: meal.steps.length,
                itemBuilder: (context, index) => Text(meal.steps[index]),
              ),
            ),
            // MealInfoCard(title: 'Passos'),
          ],
        ),
      ),
    );
  }
}
