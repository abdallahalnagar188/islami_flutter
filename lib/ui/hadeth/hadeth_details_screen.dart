import 'package:flutter/material.dart';
import 'package:islami_flutter/ui/hadeth/hadeth_tab.dart';

import '../ui_utils.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = "hadeth_details_screen";

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    print(args.title);
    print(args.content);
    return Stack(
      children: [
        Image.asset(MyImages.mainBg),
        Scaffold(
          appBar: AppBar(title: Text(args.title)),
          body: Card(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child:
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        margin: EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          textAlign: TextAlign.center,
                          args.content,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
