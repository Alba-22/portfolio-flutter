import 'package:flutter/material.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  final Color main;
  final Color primaryText;
  final Color secondaryText;
  final Color background;
  final Color cardBackground;
  final Color border;

  const CustomColors({
    required this.main,
    required this.primaryText,
    required this.secondaryText,
    required this.background,
    required this.cardBackground,
    required this.border,
  });

  @override
  CustomColors lerp(CustomColors? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      main: Color.lerp(main, other.main, t) ?? main,
      primaryText: Color.lerp(primaryText, other.primaryText, t) ?? primaryText,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t) ?? secondaryText,
      background: Color.lerp(background, other.background, t) ?? background,
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t) ?? cardBackground,
      border: Color.lerp(border, other.border, t) ?? border,
    );
  }

  @override
  CustomColors copyWith({
    Color? main,
    Color? primaryText,
    Color? secondaryText,
    Color? background,
    Color? cardBackground,
    Color? border,
  }) {
    return CustomColors(
      main: main ?? this.main,
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      background: background ?? this.background,
      cardBackground: cardBackground ?? this.cardBackground,
      border: border ?? this.border,
    );
  }

  @override
  String toString() {
    return 'CustomColors(main: $main, primaryText: $primaryText, secondaryText: $secondaryText, background: $background, cardBackground: $cardBackground, border: $border)';
  }
}
