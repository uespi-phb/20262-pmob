import 'package:flutter/material.dart';

import '../data/database.dart';
import '../widgets/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Database.categories;

    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0,
          childAspectRatio: 4 / 3,
          children: categories.map((category) => CategoryCard(category)).toList(),
        ),
      ),
    );
  }
}
