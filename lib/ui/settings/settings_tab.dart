import 'package:flutter/material.dart';
import 'package:islami_flutter/ui/common/appSettingsBottomSheet.dart';
import 'package:provider/provider.dart';

import '../../l10n/app_localizations.dart';
import '../providers/LanguageProvider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider = Provider.of<LanguageProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.start,
            AppLocalizations.of(context)!.language,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Divider(height: 12),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2, color: Colors.orange.shade700),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                  languageProvider.currentLocale == 'ar'
                      ? 'العربية'
                      : 'English',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return AppSettingsBottomSheet();
      },
    );
  }
}
