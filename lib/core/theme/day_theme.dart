import 'package:flutter/material.dart';

final ThemeData dayTheme = ThemeData(
  brightness: Brightness.dark, // Makes overall theme dark
  scaffoldBackgroundColor: Colors.black, // General background
  primaryColor: Colors.black, // Primary color (AppBar, etc.)
  canvasColor: Colors.black, // Drawer, bottom sheet, etc.
  cardColor: Colors.black, // Dialogs
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white70),
    titleLarge: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
    titleSmall: TextStyle(color: Colors.white70),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  dividerColor: Colors.white24, dialogTheme: DialogThemeData(backgroundColor: Colors.black), colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.grey,
    background: Colors.black,
    surface: Colors.black,
  ).copyWith(background: Colors.black),
);
