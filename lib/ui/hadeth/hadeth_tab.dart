
import 'package:flutter/material.dart';

import '../them/islami_theme.dart';
import '../ui_utils.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

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
            "Hadeth Num",
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
                margin: EdgeInsets.symmetric(horizontal: 40,vertical: 4),
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Text(
                  textAlign: TextAlign.center,
                  "Hadthe one",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            },
            itemCount: 100,
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
        ),
      ],
    );
  }
}
