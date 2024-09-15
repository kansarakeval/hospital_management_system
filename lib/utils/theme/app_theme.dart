import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.white,
  ),
  brightness: Brightness.light,

);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.black87,
  ),
  brightness: Brightness.dark,
);