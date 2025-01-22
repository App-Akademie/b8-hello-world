import 'package:flutter/material.dart';

ThemeData lighTheme() => ThemeData(
      appBarTheme: AppBarTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );

ThemeData darkTheme() => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
