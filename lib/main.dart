import 'package:flutter/material.dart';
import 'package:hello_world/gallery/gallery_app.dart';
import 'package:hello_world/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool useDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: useDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: lighTheme(),
      darkTheme: darkTheme(),
      home: GalleryApp(
        useDarkmode: useDarkMode,
        onThemeChange: () {
          setState(() {
            useDarkMode = !useDarkMode;
          });
        },
      ),
    );
  }
}
