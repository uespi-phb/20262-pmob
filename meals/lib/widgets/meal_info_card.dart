import 'package:flutter/material.dart';

class MealInfoCard extends StatelessWidget {
  final String? title;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  const MealInfoCard({
    super.key,
    this.title,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    final infoItems = <Widget>[];

    for (int index = 0; index < itemCount; index++) {
      infoItems.add(itemBuilder(context, index));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null)
            Align(
              child: Text(
                title!,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          SizedBox(height: 8.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white30,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: infoItems,
            ),
          ),
        ],
      ),
    );
  }
}
