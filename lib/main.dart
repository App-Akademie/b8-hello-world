import 'package:flutter/material.dart';
import 'package:hello_world/home_images.dart';
import 'package:hello_world/home_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeImages(),
    );
  }
}
