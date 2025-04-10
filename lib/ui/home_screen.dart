import 'package:flutter/material.dart';
import 'package:islami_flutter/ui/hadeth/hadeth_tab.dart';
import 'package:islami_flutter/ui/quran/quran_tab.dart';
import 'package:islami_flutter/ui/radio/radio_tab.dart';
import 'package:islami_flutter/ui/sebha/sebha_tab.dart';
import 'package:islami_flutter/ui/them/islami_theme.dart';
import 'package:islami_flutter/ui/ui_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(MyImages.mainBg),
        Scaffold(
          appBar: AppBar(title: Text("Islami App")),
          body: tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.iconQuran)),
                label: "Quran",
                backgroundColor: IslamiTheme.appColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.iconHadeth)),
                label: "Hadeth",
                backgroundColor: IslamiTheme.appColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.iconSebha)),
                label: "Sebha",
                backgroundColor: IslamiTheme.appColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.iconRadio)),
                label: "Radio",
                backgroundColor: IslamiTheme.appColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

var tabs = [
  QuranTab(), HadethTab(),SebhaTab(),RadioTab()
];