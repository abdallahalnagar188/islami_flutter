import 'package:flutter/material.dart';

import '../ui_utils.dart';

class SouraDetailsScreen extends StatelessWidget {
  const SouraDetailsScreen({super.key});

  static const routeName = "soura_details_screen";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SouraDetailsArgs;

    return Stack(
      children: [
        Image.asset(MyImages.mainBg),
        Scaffold(appBar: AppBar(title: Text(args.souraName))),
      ],
    );
  }
}

class SouraDetailsArgs {
  int index;
  String souraName;

  SouraDetailsArgs(this.index, this.souraName);
}
