import 'package:flutter/material.dart';
import 'package:islami_flutter/ui/hadeth/hadeth_details_screen.dart';
import 'package:islami_flutter/ui/home_screen.dart';
import 'package:islami_flutter/ui/providers/LanguageProvider.dart';
import 'package:islami_flutter/ui/quran/soura_details_screen.dart';
import 'package:islami_flutter/ui/them/islami_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) {
        return LanguageProvider();
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SouraDetailsScreen.routeName: (_) => SouraDetailsScreen(),
        HadethDetailsScreen.routName: (_) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: IslamiTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale:Locale( languageProvider.currentLocale), // 👈 use dynamic locale
    );
  }
}
