import 'package:flutter/material.dart';
import 'package:islami/ahadeth.dart';
import 'package:islami/myTheme.dart';
import 'package:islami/quran.dart';
import 'package:islami/radio.dart';
import 'package:islami/sebha.dart';

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
            title: Text("islami", style: Theme.of(context).textTheme.bodyLarge),
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