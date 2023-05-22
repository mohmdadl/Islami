import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/taps/ahadeth.dart';
import 'package:islami/myTheme.dart';
import 'package:islami/taps/quran.dart';
import 'package:islami/taps/radio.dart';
import 'package:islami/taps/sebha.dart';
import 'package:provider/provider.dart';

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
                  child: Text('Islami App',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                ExpansionTile(
                  title: Text('Theames',
                      style: Theme.of(context).textTheme.bodyMedium),
                  children: [
                    TextButton(
                      onPressed: () {
                        provider.Changetheme(ThemeMode.dark);
                      },
                      child: Text("Dark Mode",
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    TextButton(
                      onPressed: () {
                        provider.Changetheme(ThemeMode.light);
                      },
                      child: Text("Light Mode",
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text('Languages',
                      style: Theme.of(context).textTheme.bodyMedium),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Arabic",
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("English",
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ],
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("islami", style: Theme.of(context).textTheme.bodyLarge),
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
                  label: "Quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "ahadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "sebha"),
              BottomNavigationBarItem(
                  // backgroundColor: myThemeData.lighyColor,
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "radio"),
            ],
          ),
          body: taps[index],
        ),
      ],
    );
  }
}
