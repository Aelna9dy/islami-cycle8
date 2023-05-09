import 'package:flutter/material.dart';
import 'package:islami/homeScreen/hadeth/hadeth_tab.dart';
import 'package:islami/homeScreen/provider/settings_provider.dart';
import 'package:islami/homeScreen/quran/quran_tab.dart';
import 'package:islami/homeScreen/radio/radio_tab.dart';
import 'package:islami/homeScreen/tasbeh/tasbeh_tab.dart';
import 'package:provider/provider.dart';

import 'settings_screen/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routName = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  List<Widget> screenTab = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.getMainBackground()),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Islami",
          ),
          centerTitle: true,
        ),
        body: screenTab[selectIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: (int index) {
            setState(() {
              selectIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")),
              label: "Hadith",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.settings),
              label: "settings",
            ),
          ],
        ),
      ),
    );
  }
}
