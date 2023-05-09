import 'package:flutter/material.dart';
import 'package:islami/homeScreen/hadeth/hadeth_details.dart';
import 'package:islami/homeScreen/home_Screen.dart';
import 'package:islami/homeScreen/provider/settings_provider.dart';
import 'package:islami/homeScreen/quran/sura_details_screen.dart';
import 'package:islami/homeScreen/radio/radio_tab.dart';
import 'package:islami/my_Theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingsProvider.currentTheme,
      title: "Islami",
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
        RadioTab.routName: (context) => RadioTab(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
      initialRoute: HomeScreen.routName,
    );
  }
}
