import 'package:flutter/material.dart';
import 'package:hello_world/grid_page.dart';
import 'package:hello_world/home_images.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridPage(),
    );
  }
}
