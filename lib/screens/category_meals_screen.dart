import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  final Category category;
   CategoryMealsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas'),
      ),
      body: Center(
        child: Text(category.title),
      ),
    );
  }
}
