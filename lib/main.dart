import 'package:flutter/material.dart';
import 'package:food_recipes/data/dummy_data.dart';
import 'package:food_recipes/models/meal.dart';
import 'package:food_recipes/screens/category_meals_screen.dart';
import 'package:food_recipes/screens/meal_detail_screen.dart';
import 'package:food_recipes/screens/settings_screen.dart';
import 'package:food_recipes/screens/tabs_screen.dart';
import 'package:food_recipes/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Meal> _availableMeals = DUMMY_MEALS;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber)),
      routes: {
        AppRoutes.HOME: (context) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoryMealsScreen(_availableMeals),
        AppRoutes.MEAL_DETAIL: (context) => const MealDetailScreen(),
        AppRoutes.SETTINGS: (context) => const SettingsScreen(),
      },
    );
  }
}
