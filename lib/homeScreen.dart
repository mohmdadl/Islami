import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/taps/ahadeth.dart';
import 'package:islami/myTheme.dart';
import 'package:islami/taps/quran.dart';
import 'package:islami/taps/radio.dart';
import 'package:islami/taps/sebha.dart';

class homeScreen extends StatefulWidget {
  static const String RoutName = "home";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int index=0;
  List taps=[radio(),sebha(),ahadeth(),quran()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/main_bg.png",
              fit: BoxFit.fill,
            )),
        Scaffold(
          appBar: AppBar(
            title: Text("islami", style: GoogleFonts.adventPro(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold)),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index=value;
              setState(() {
                
              });
            },
            items: [
              BottomNavigationBarItem(
                  // backgroundColor: myThemeData.lighyColor,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "ahadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quraan.png")),
                  label: "Quran"),
            ],
          ),
          body: taps[index],
        ),
      ],
    );
  }
}
