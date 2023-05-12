import 'package:flutter/material.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/myTheme.dart';

void main(){
  runApp(myApplication());
}
class myApplication extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: myThemeData.ligtTheme,
      darkTheme: myThemeData.darkTheme,
      themeMode: ThemeMode.light,

      debugShowCheckedModeBanner: false,
      initialRoute:homeScreen.RoutName ,
      routes: {
        homeScreen.RoutName:(context) => homeScreen(),

      },

    );
  }
}
