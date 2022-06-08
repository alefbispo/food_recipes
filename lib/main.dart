import 'package:flutter/material.dart';
import 'package:food_recipes/data/dummy_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List listaCategoria = DUMMY_CATEGORIES;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vamos Cozinhar?'),
      ),
      body: const Center(),
    );
  }
}
