import 'package:flutter/material.dart';
import 'package:food_recipes/models/category.dart';
import 'package:food_recipes/utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category, {Key? key}) : super(key: key);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    final border = BorderRadius.circular(40);
    return InkWell(
      splashColor: Colors.pink,
      borderRadius: border,
      onTap: () => _selectCategory(context),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: border,
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Text(
            category.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
