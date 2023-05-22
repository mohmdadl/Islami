import 'package:flutter/material.dart';
import 'package:islami/hadeth_content.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/myTheme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/sura_content.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: myApplication()));
}

class myApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<MyProvider>(context);

    return MaterialApp(
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
