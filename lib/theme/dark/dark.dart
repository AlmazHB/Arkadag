import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme:  ColorScheme.dark(background: Colors.black,secondary: Color.fromARGB(255, 54, 53, 53)),
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
    titleTextStyle: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 24,
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 24,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontSize: 16,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: 14,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 32,
    )
  ),
);
