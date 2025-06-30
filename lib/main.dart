import 'package:flutter/material.dart';

import 'core/theme/day_theme.dart';
import 'core/theme/night__theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isNightMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Switcher App',
      debugShowCheckedModeBanner: false,
      theme: isNightMode ? nightTheme : dayTheme,
      home: HomePage(
        isNightMode: isNightMode,
        onThemeChanged: (value) {
          setState(() {
            isNightMode = value;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool isNightMode;
  final ValueChanged<bool> onThemeChanged;

  const HomePage({
    super.key,
    required this.isNightMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Example'),
        actions: [
          Switch(
            value: isNightMode,
            onChanged: onThemeChanged,
            activeColor: Colors.white,
            inactiveThumbColor: Colors.grey,
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Hello, themed world!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
