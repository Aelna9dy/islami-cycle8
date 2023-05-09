import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;

  void changeTheme(ThemeMode newMode) {
    if (newMode == currentTheme) return;
    currentTheme = newMode;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String getMainBackground() {
    return currentTheme == ThemeMode.dark
        ? "assets/images/main_background_dark.png"
        : "assets/images/main_background.png";
  }
}
