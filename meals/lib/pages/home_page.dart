import 'package:flutter/material.dart';
import 'package:meals/providers/meal_provider.dart';
import 'package:provider/provider.dart';

import '../data/database.dart';
import '../widgets/meals_list.dart';
import '../widgets/meal_category_grid.dart' show MealCategoryGrid;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final categories = Database.categories;

    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
        centerTitle: true,
      ),
      body: (selectedIndex == 0)
          ? MealCategoryGrid(categories: categories) //
          // : FavoriteMealsList(),
          : Consumer<MealProvider>(builder: (_, _, _) => FavoriteMealsList()),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          if (selectedIndex != index) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        items: [
          BottomNavigationBarItem(label: 'Categorias', icon: Icon(Icons.category)),
          BottomNavigationBarItem(label: 'Favoritos', icon: Icon(Icons.star)),
        ],
      ),
    );
  }
}
