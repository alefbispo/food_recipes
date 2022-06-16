import 'package:flutter/material.dart';
import 'package:food_recipes/components/main_drower.dart';
import 'package:food_recipes/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings) onSettingsChanged;
  const SettingsScreen({
    Key? key,
    required this.onSettingsChanged,
  }) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();
  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _createSwitch(
                  'Sem Gluten',
                  'Exibir apenas refeições sem Gluten',
                  settings.isGlutenFree,
                  (value) {
                    return setState(
                      () {
                        settings.isGlutenFree = value;
                      },
                    );
                  },
                ),
                _createSwitch(
                  'Sem Lactose',
                  'Exibir apenas refeições sem Lactose',
                  settings.isLactoseFree,
                  (value) {
                    return setState(
                      () {
                        settings.isLactoseFree = value;
                      },
                    );
                  },
                ),
                _createSwitch(
                  'Comida Vegana',
                  'Exibir apenas refeições Veganas',
                  settings.isVegan,
                  (value) {
                    return setState(
                      () {
                        settings.isVegan = value;
                      },
                    );
                  },
                ),
                _createSwitch(
                  'Comida Vegetariana',
                  'Exibir apenas refeições Vegetarianas',
                  settings.isVegetarian,
                  (value) {
                    return setState(
                      () {
                        settings.isVegetarian = value;
                      },
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
