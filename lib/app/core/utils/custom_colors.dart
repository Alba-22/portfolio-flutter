import 'package:flutter/material.dart';

abstract class CColors {
  static const Color primary = Color(0xFFFF6700);
  static const Color almostWhite = Color(0xFFFFFEFB);
  static const Color almostBlack = Color(0xFF1E0C00);
  static const Color blackBackground = Color(0xFF121212);

  static const endPageGradient = LinearGradient(
    colors: [
      Color(0xFF0F0F0F),
      Color(0xFF0D1924),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
