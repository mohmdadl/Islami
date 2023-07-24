import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/taps/ahadeth.dart';
import 'package:islami/myTheme.dart';
import 'package:islami/taps/quran.dart';
import 'package:islami/taps/radio.dart';
import 'package:islami/taps/sebha.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class homeScreen extends StatefulWidget {
  static const String RoutName = "home";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int index = 0;
  List taps = [quran(), ahadeth(), sebha(), radio()];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              Brightness.light == Theme.of(context).brightness
                  ? "assets/images/main_bg.png"
                  : "assets/images/bg.png",
              fit: BoxFit.fill,
            )),
        Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Brightness.light == Theme.of(context).brightness
                        ? Color(0xffB7935F)
                        : Color.fromARGB(255, 9, 55, 88),
                  ),
                  child: Text(AppLocalizations.of(context)!.appTitle,
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                ExpansionTile(
                  title: Text(AppLocalizations.of(context)!.theames,
                      style: Theme.of(context).textTheme.bodyMedium),
                  children: [
                    TextButton(
                      onPressed: () {
                        provider.Changetheme(ThemeMode.dark);
                      },
                      child: Text(AppLocalizations.of(context)!.darkMode,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    TextButton(
                      onPressed: () {
                        provider.Changetheme(ThemeMode.light);
                      },
                      child: Text(AppLocalizations.of(context)!.lightmode,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(AppLocalizations.of(context)!.languages,
                      style: Theme.of(context).textTheme.bodyMedium),
                  children: [
                    TextButton(
                      onPressed: () {
                        provider.ChangeLanguage("ar");
                      },
                      child: Text(AppLocalizations.of(context)!.arabic,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    TextButton(
                      onPressed: () {
                        provider.ChangeLanguage("en");
                      },
                      child: Text(AppLocalizations.of(context)!.english,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Text(
                  "  Created by :\n  Mohamed Adel",
                  style: TextStyle(
                    fontSize: 20,
                    color: Brightness.light == Theme.of(context).brightness
                        ? Color(0xffB7935F)
                        : Color.fromARGB(255, 9, 55, 88),
                  ),
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appTitle,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quraan.png")),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  // backgroundColor: myThemeData.lighyColor,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: AppLocalizations.of(context)!.radio),
            ],
          ),
          body: taps[index],
        ),
      ],
    );
  }
}
