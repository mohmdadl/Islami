import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami/sura_args.dart';
import 'package:google_fonts/google_fonts.dart';

class sura_content extends StatefulWidget {
  static const String RoutName = "suraContent";

  @override
  State<sura_content> createState() => _sura_contentState();
}

class _sura_contentState extends State<sura_content> {
  List<String> VersesList = [];

  @override
  Widget build(BuildContext context) {
    sura_args sura = ModalRoute.of(context)?.settings.arguments as sura_args;
    if (VersesList.isEmpty) {
      getFileData(sura.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/main_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height*0.11,
            title: Text(
          sura.suraName,
          style: GoogleFonts.arefRuqaa(color:Colors.black87,fontSize: 40),
        )),
        body: VersesList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                separatorBuilder: (context, index) => Divider(
                    thickness: 0.1,
                    indent: 40,
                    endIndent: 40,
                    color: Colors.black),
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        "(${index + 1}) ${VersesList[index]}",
                        style: GoogleFonts.elMessiri(fontSize: 20,color: Color(0xff242424)),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  );
                },
                itemCount: VersesList.length,
              ),
      ),
    );
  }

  Future<void> getFileData(int index) async {
    String verses =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = verses.split("\n");
    VersesList = lines;
    setState(() {});
  }
}
