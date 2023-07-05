import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/hadeth_content.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/myTheme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/sura_content.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: myApplication()));
}

class myApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('en'), // English
    Locale('ar'), // Spanish
  ],
  locale: Locale(provider.languae),
      theme: myThemeData.ligtTheme,
      darkTheme: myThemeData.darkTheme,
      themeMode:provider.themeMode,
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen.RoutName,
      routes: {
        homeScreen.RoutName: (context) => homeScreen(),
        sura_content.RoutName: (context) => sura_content(),
        hadeth_content.RoutName: (context) => hadeth_content(),
      },
    );
  }
}
