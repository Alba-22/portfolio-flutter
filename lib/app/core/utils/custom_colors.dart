import 'package:flutter/material.dart';

abstract class CColors {
  static const Color primary = Color(0xFFFF6700);
  static MaterialColor get primarySwatch => _getMaterialColor(primary);
  static const Color almostWhite = Color(0xFFFFFEFB);
  static const Color almostBlack = Color(0xFF1E0C00);
  static const Color blackBackground = Color(0xFF121212);
  static const Color whiteGray = Color(0xFFECECEC);

  static const endPageGradient = LinearGradient(
    colors: [
      Color(0xFF0F0F0F),
      Color(0xFF0D1924),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

MaterialColor _getMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: Color.fromRGBO(color.red, color.blue, color.green, 0.1),
    100: Color.fromRGBO(color.red, color.blue, color.green, 0.2),
    200: Color.fromRGBO(color.red, color.blue, color.green, 0.3),
    300: Color.fromRGBO(color.red, color.blue, color.green, 0.4),
    400: Color.fromRGBO(color.red, color.blue, color.green, 0.5),
    500: Color.fromRGBO(color.red, color.blue, color.green, 0.6),
    600: Color.fromRGBO(color.red, color.blue, color.green, 0.7),
    700: Color.fromRGBO(color.red, color.blue, color.green, 0.8),
    800: Color.fromRGBO(color.red, color.blue, color.green, 0.9),
    900: Color.fromRGBO(color.red, color.blue, color.green, 1),
  });
}
