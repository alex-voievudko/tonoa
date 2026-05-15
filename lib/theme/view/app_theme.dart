import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData get theme {
    const seedColor = Color(0xFF1D6B57);

    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
      scaffoldBackgroundColor: const Color(0xFFF5F7F4),
      appBarTheme: const AppBarTheme(centerTitle: false),
      useMaterial3: true,
    );
  }
}
