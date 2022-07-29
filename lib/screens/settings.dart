import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localization/main.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.settings),
      ),
      body: Center(
        child: Column(
          children: [
            Text(t.settingsScreen),
            const SizedBox(height: 20),
            Wrap(
              children: [
                OutlinedButton(
                  onPressed: () {
                    // lookupAppLocalizations(const Locale("en"));
                    setState(() {
                      MyApp.setLocale(context, Locale("en", ""));
                    });
                  },
                  child: const Text('Switch to English'),
                ),
                OutlinedButton(
                  onPressed: () {
                    // lookupAppLocalizations(const Locale("ar"));
                    setState(() {
                      MyApp.setLocale(context, Locale("ar", ""));
                    });
                  },
                  child: const Text('Switch to Arabic'),
                ),
                OutlinedButton(
                  onPressed: () {
                    // lookupAppLocalizations(const Locale("ar"));
                    setState(() {
                      MyApp.setLocale(context, Locale("bn", ""));
                    });
                  },
                  child: const Text('Switch to Bangla'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
