import 'package:flutter/material.dart';
import 'package:hello_world/gallery/gallery_app.dart';
import 'package:hello_world/gallery/gallery_page.dart';
import 'package:hello_world/home_images.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GalleryApp(),
    );
  }
}
