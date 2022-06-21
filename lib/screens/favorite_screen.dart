import 'package:flutter/material.dart';
import 'package:food_recipes/components/new_item.dart';
import 'package:food_recipes/models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoriteScreen({required this.favoriteMeals, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('Sem refeições selecionadas'),
      );
    } else {
      return Center(
        child: ListView.builder(
            itemCount: favoriteMeals.length,
            itemBuilder: (context, index) {
              return MealItem(meal: favoriteMeals[index]);
            }),
      );
    }
  }
}
