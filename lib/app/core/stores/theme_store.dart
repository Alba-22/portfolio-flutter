import 'package:flutter/material.dart';

class ThemeStore extends ValueNotifier<ThemeMode> {
  ThemeStore() : super(ThemeMode.dark);

  void switchTheme() {
    value = value == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
  }
}
