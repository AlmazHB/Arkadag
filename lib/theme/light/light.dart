import 'package:flutter/material.dart';

ThemeData lightTheme= ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(background: Colors.white,seedColor:  const Color(0xFF15A354),secondary: Colors.black12),
       
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        textTheme:  const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 12,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 8,
          ),
          
        ),

);