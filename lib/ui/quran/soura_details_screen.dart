import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ui_utils.dart';

class SouraDetailsScreen extends StatefulWidget {
  const SouraDetailsScreen({super.key});

  static const routeName = "soura_details_screen";

  @override
  State<SouraDetailsScreen> createState() => _SouraDetailsScreenState();
}

class _SouraDetailsScreenState extends State<SouraDetailsScreen> {
  List verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SouraDetailsArgs;
    if (verses.isEmpty) {
      readFileData(args.index);
    }
    return Stack(
      children: [
        Image.asset(MyImages.mainBg),
        Scaffold(
          appBar: AppBar(title: Text(args.souraName)),
          body: ListView.builder(
            itemBuilder: (context, index) {
              print(verses[index]);
              return Text(verses[index]);
            },
            itemCount: verses.length,
          ),
        ),
      ],
    );
  }
  void readFileData(int index) async {
    String fileContent = await rootBundle.loadString(
      "assets/files/${index + 1}.txt", // Assuming files have .txt extension
    );
    List<String> lines = fileContent.trim().split('\n');
    setState(() {
      verses = lines;
    });
  }

}

class SouraDetailsArgs {
  int index;
  String souraName;

  SouraDetailsArgs(this.index, this.souraName);
}
