import 'package:flutter/material.dart';

import '../pages/meal_detail_page.dart';
import '../models/meal.dart';
import './icon_label.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MealDetailPage(meal)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.only(
                      topLeft: const Radius.circular(15.0),
                      topRight: const Radius.circular(15.0),
                    ),
                    child: Image.network(
                      meal.imageUrl,
                      webHtmlElementStrategy: WebHtmlElementStrategy.fallback,
                    ),
                  ),
                  Positioned(
                    bottom: 25.0,
                    right: 25.0,
                    child: Container(
                      width: 250.0,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Text(
                        meal.title,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconLabel(
                      icon: Icons.schedule,
                      label: '${meal.durationInMinutes} min',
                      labelColor: Colors.black87,
                    ),
                    IconLabel(
                      icon: Icons.work,
                      label: meal.complexity.name,
                      labelColor: Colors.black87,
                    ),
                    IconLabel(
                      icon: Icons.attach_money,
                      label: meal.cost.name,
                      labelColor: Colors.black87,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
