import 'package:flutter/material.dart';
import 'package:food_recipes/components/main_drower.dart';
import 'package:food_recipes/models/meal.dart';
import 'package:food_recipes/screens/categories_screen.dart';
import 'package:food_recipes/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favotiteMeals;

  const TabsScreen({
    required this.favotiteMeals,
    Key? key,
  }) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<String> _titles = [
    'Lista de Categorias',
    'Meus Favoritos',
  ];

  List<Widget> _screens = [];

  @override
  void initState() {
    super.initState();
    _screens = [
      const CategoriesScreen(),
      FavoriteScreen(favoriteMeals: widget.favotiteMeals),
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_titles[_selectedScreenIndex])),
      ),
      body: _screens[_selectedScreenIndex],
      drawer: const MainDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        backgroundColor: Theme.of(context).colorScheme.primary,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
