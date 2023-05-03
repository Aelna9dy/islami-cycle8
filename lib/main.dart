import 'package:flutter/material.dart';
import 'package:islami/homeScreen/home_Screen.dart';
import 'package:islami/homeScreen/quran/sura_details_screen.dart';
import 'package:islami/homeScreen/radio/radio_tab.dart';
import 'package:islami/my_Theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      title: "Islami",
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
        RadioTab.routName: (context) => RadioTab(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
