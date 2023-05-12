import 'package:flutter/material.dart';

class myThemeData {
  static const Color lighyColor = Color(0xffB7935F);

  static ThemeData ligtTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,

    primaryColor: lighyColor,

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),

    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: lighyColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: lighyColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lighyColor,
      type: BottomNavigationBarType.fixed,
      
      selectedItemColor: Colors.black,
      // selectedLabelStyle: ,
      unselectedItemColor: Colors.white,
      // unselectedLabelStyle: ,
    ),

    
    
  );
  static ThemeData darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0.0,
    centerTitle: true,
  ));
}
