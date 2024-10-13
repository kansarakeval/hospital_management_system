import 'package:flutter/material.dart';

import 'color.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: false,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.white,
  ),
  brightness: Brightness.light,
  textTheme: TextTheme(
    titleLarge: TextStyle(color: Colors.black,fontSize: 20),
    titleMedium: TextStyle(color: Colors.black,fontSize: 18),
    titleSmall: TextStyle(color: Colors.black,fontSize: 15),

    bodyLarge: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
    bodySmall: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),

    headlineLarge: TextStyle(color: Colors.black,fontSize: 24),
    headlineMedium: TextStyle(color: Colors.black,fontSize: 16),
    headlineSmall: TextStyle(color: Colors.black,fontSize: 12),

    displayLarge: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),
    displayMedium: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
    displaySmall: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),

    labelLarge: TextStyle(color: bluePrimary,fontSize: 20,fontWeight: FontWeight.bold),
    labelMedium: TextStyle(color: bluePrimary,fontSize: 15,),
  )
);

ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.black,
  ),
  brightness: Brightness.dark,
    textTheme: TextTheme(
      titleLarge: TextStyle(color: Colors.white,fontSize: 20),
      titleMedium: TextStyle(color: Colors.white,fontSize: 18),
      titleSmall: TextStyle(color: Colors.white,fontSize: 15),

      bodyLarge: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
      bodySmall: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),

      headlineLarge: TextStyle(color: Colors.white,fontSize: 24),
      headlineMedium: TextStyle(color: Colors.white,fontSize: 16),
      headlineSmall: TextStyle(color: Colors.white,fontSize: 12),

      displayLarge: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
      displayMedium: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
      displaySmall: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),

      labelLarge: TextStyle(color: bluePrimary,fontSize: 20,fontWeight: FontWeight.bold),
    )
);