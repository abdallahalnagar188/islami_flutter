import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_flutter/ui/hadeth/hadeth_details_screen.dart';
import '../them/islami_theme.dart';
import '../ui_utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allAhadeth = [];

  @override
  void initState() {
    readAhadethFromFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(MyImages.hadethIv, width: 130, height: 130),
        Container(
          height: 3,
          width: double.infinity,
          color: IslamiTheme.appColor,
          margin: EdgeInsets.only(top: 8),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
           AppLocalizations.of(context)!.hadethNum,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        Container(
          height: 3,
          width: double.infinity,
          color: IslamiTheme.appColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Container(
                height: 2,
                width: double.infinity,
                color: IslamiTheme.appColor,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 4),
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    HadethDetailsScreen.routName,
                    arguments: allAhadeth[index],
                  );
                },
                child: Text(
                  allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
            itemCount: allAhadeth.length,
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ],
    );
  }

  void readAhadethFromFile() async {
    String fileContent = await rootBundle.loadString(
      "assets/files/ahadeth.txt",
    );
    List<String> seperatedAhadeth = fileContent.split("#");

    for (int i = 0; i < seperatedAhadeth.length; i++) {
      String singleHadeth = seperatedAhadeth[i];
      List<String> lines = singleHadeth.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth h = Hadeth(title, content);
      allAhadeth.add(h);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.title, this.content);
}
