import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_info_card.dart';

class MealDetailPage extends StatelessWidget {
  final Meal meal;

  const MealDetailPage(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
              webHtmlElementStrategy: WebHtmlElementStrategy.fallback,
            ),
            Column(
              children: [
                MealInfoCard(
                  title: 'Ingredientes',
                  itemCount: meal.ingredients.length,
                  itemBuilder: (context, index) => Text(meal.ingredients[index]),
                ),

                MealInfoCard(
                  title: 'Passos',
                  itemCount: meal.steps.length,
                  itemBuilder: (context, index) => Text(meal.steps[index]),
                ),
              ],
            ),
            // MealInfoCard(title: 'Passos'),
          ],
        ),
      ),
    );
  }
}
