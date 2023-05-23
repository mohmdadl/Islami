import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static const Color laban = Color(0xffEAE9E9);

  static const Color darkColor = Color(0xff141A2E);
    static const Color yColor = Color(0xfffFACC1D);


  static ThemeData ligtTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.transparent,

    primaryColor: lightColor,

    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color:lightColor,size: 30),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: laban,
    ),

    textTheme: const TextTheme(
      
      bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: lightColor,
        
      ),
      bodyMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
        fontFamily: 'ArefRuqaa',
      ),
      bodyLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: Colors.black,
         fontFamily: 'ArefRuqaa',
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightColor,
      type: BottomNavigationBarType.fixed,
      
      selectedItemColor: Colors.black,
      // selectedLabelStyle: ,
      unselectedItemColor: Colors.white,
      // unselectedLabelStyle: ,
    ),

    
    
  );


/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>>>>>>>*/



  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.transparent,

    primaryColor: darkColor,

    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color:Colors.white,size: 30),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: darkColor,
    ),

    textTheme: const TextTheme(
      bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: yColor,
        
      ),
      bodyMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'ArefRuqaa',
      ),
      bodyLarge: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: 'ArefRuqaa',
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkColor,
      type: BottomNavigationBarType.fixed,
      
      selectedItemColor: Color(0xfffFACC1D),
      // selectedLabelStyle: ,
      unselectedItemColor: Colors.white,
      // unselectedLabelStyle: ,
    ),

    
    
  );
}
