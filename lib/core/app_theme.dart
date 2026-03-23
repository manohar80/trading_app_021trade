import 'package:flutter/material.dart';

/// AppTheme class used to common colors and layout which used in entire app.
/// You can modify colors from here which apply entire app.
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
    );
  }
}
