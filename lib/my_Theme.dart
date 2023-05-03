import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      color: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: Color(0xFF242424),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: lightPrimary,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 36,
      ),
      selectedLabelStyle: TextStyle(
        color: Colors.black,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 24,
      ),
    ),
  );
}
