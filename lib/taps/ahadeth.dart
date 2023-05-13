import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_args.dart';
import 'package:islami/hadeth_content.dart';

class ahadeth extends StatelessWidget {

  List<String> hadeyhNames = [
    "حديث رقم 1",
    "حديث رقم 2",
    "حديث رقم 3",
    "حديث رقم 4",
    "حديث رقم 5",
    "حديث رقم 6",
    "حديث رقم 7",
    "حديث رقم 8",
    "حديث رقم 9",
    "حديث رقم 10",
    "حديث رقم11",
    "حديث رقم 12",
    "حديث رقم 13",
    "حديث رقم 14",
    "حديث رقم 15",
    "حديث رقم 16",
    "حديث رقم 17",
    "حديث رقم 18",
    "حديث رقم 19",
    "حديث رقم 20",
    "حديث رقم 21",
    "حديث رقم 22",
    "حديث رقم 23",
    "حديث رقم 24",
    "حديث رقم 25",
    "حديث رقم 26",
    "حديث رقم 27",
    "حديث رقم 28",
    "حديث رقم 29",
    "حديث رقم 30",
    "حديث رقم 31",
    "حديث رقم 32",
    "حديث رقم 33",
    "حديث رقم 34",
    "حديث رقم 35",
    "حديث رقم 36",
    "حديث رقم 37",
    "حديث رقم 38",
    "حديث رقم 39",
    "حديث رقم 40",
    "حديث رقم 41",
    "حديث رقم 42",
    "حديث رقم 43",
    "حديث رقم 44",
    "حديث رقم 45",
    "حديث رقم 46",
    "حديث رقم 47",
    "حديث رقم 48",
    "حديث رقم 49",
    "حديث رقم 50"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth.png"),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "الأحاديث ",

                  style:GoogleFonts.adventPro(color: Colors.black),

                ),
              ),

            ],
          ),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {

                return Expanded(
                  child: InkWell(
                    onTap: (){

                      Navigator.pushNamed(context,hadeth_content.RoutName,arguments:hadeth_args(hadethName: hadeyhNames[index], index: index));
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      " ${hadeyhNames[index]}" ,
                      style: GoogleFonts.quicksand(color: Colors.black),
                    ),
                  ),
                );
              },
              itemCount: hadeyhNames.length,
            ),
          ),
        ],
        // backgroundColor: Colors.amber,
      ),
    );
  }
}
