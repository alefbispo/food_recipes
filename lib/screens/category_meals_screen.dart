import 'package:flutter/material.dart';
import 'package:food_recipes/components/new_item.dart';
import 'package:food_recipes/models/meal.dart';

import '../models/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  final List<Meal> meals;

  const CategoryMealsScreen(this.meals);
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = meals
        .where(
          (meal) => meal.categories.contains(category.id),
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: ((context, index) {
            return MealItem(meal: categoryMeals[index]);
          })),
    );
  }
}
