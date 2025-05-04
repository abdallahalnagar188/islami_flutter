import 'package:flutter/material.dart';
import 'package:islami_flutter/ui/ui_utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(MyImages.radioIv),
        Text(
          AppLocalizations.of(context)!.radioFmEg,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(MyImages.icArrowNext, width: 30, height: 30),
              Image.asset(MyImages.icPlay, width: 55, height: 55),
              Image.asset(MyImages.icArrowForward, width: 30, height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
