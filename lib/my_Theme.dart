import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color yellow = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    accentColor: lightPrimary,
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
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 30,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
    cardColor: Colors.white,
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    accentColor: yellow,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      color: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: lightPrimary,
      selectedIconTheme: IconThemeData(
        color: yellow,
        size: 36,
      ),
      selectedLabelStyle: TextStyle(
        color: yellow,
      ),
      selectedItemColor: yellow,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 24,
      ),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    cardColor: darkPrimary,
  );
}
