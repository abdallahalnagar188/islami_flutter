import 'package:flutter/material.dart';
import 'package:islami_flutter/ui/hadeth/hadeth_tab.dart';
import 'package:islami_flutter/ui/quran/quran_tab.dart';
import 'package:islami_flutter/ui/radio/radio_tab.dart';
import 'package:islami_flutter/ui/sebha/sebha_tab.dart';
import 'package:islami_flutter/ui/settings/settings_tab.dart';
import 'package:islami_flutter/ui/them/islami_theme.dart';
import 'package:islami_flutter/ui/ui_utils.dart';

import '../l10n/app_localizations.dart';

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
          appBar: AppBar(title: Text(AppLocalizations.of(context)!.appTitle)),
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
                label: AppLocalizations.of(context)!.quranTap,
                backgroundColor: IslamiTheme.appColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.iconHadeth)),
                label: AppLocalizations.of(context)!.ahadethTap,
                backgroundColor: IslamiTheme.appColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.iconSebha)),
                label: AppLocalizations.of(context)!.sebhaTap,
                backgroundColor: IslamiTheme.appColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.iconRadio)),
                label: AppLocalizations.of(context)!.radioTap,
                backgroundColor: IslamiTheme.appColor,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(MyImages.settingsIv)),
                label: AppLocalizations.of(context)!.settings,
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
  QuranTab(), HadethTab(),SebhaTab(),RadioTab(),SettingsTab()
];