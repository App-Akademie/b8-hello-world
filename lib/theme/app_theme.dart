import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lighTheme() => ThemeData(
      appBarTheme: AppBarTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: GoogleFonts.montserratTextTheme(),
    );

ThemeData darkTheme() => ThemeData(
      brightness: Brightness.dark,
      textTheme: GoogleFonts.aBeeZeeTextTheme(),
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 22,
        ),
      ),
    );
