import 'package:flutter/material.dart';

class ThemesProvider extends ChangeNotifier {

  static const String light = 'light';
  static const String dark = 'dark';

  ThemeData currentTheme;

  ThemesProvider({
    required bool isDarkMode
  }): currentTheme = !isDarkMode ? ThemeData.light() : ThemeData.dark();

  void setTheme(String themeName) {
    switch(themeName) {
      case light: currentTheme = ThemeData.light();
      break;

      case dark: currentTheme = ThemeData.dark();
      break;

      default: currentTheme = ThemeData.light();
    }

    notifyListeners();
  }

}