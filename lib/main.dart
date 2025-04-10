import 'package:flutter/material.dart';
import 'package:islami_flutter/ui/home_screen.dart';
import 'package:islami_flutter/ui/quran/soura_details_screen.dart';
import 'package:islami_flutter/ui/them/islami_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SouraDetailsScreen.routeName: (_) => SouraDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: IslamiTheme.lightTheme,
    );
  }
}
