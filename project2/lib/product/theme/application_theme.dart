import 'package:flutter/material.dart';

@immutable
class ApplicationTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
      ),
    );
  }
}
