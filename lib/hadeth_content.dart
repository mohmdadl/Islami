import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami/hadeth_args.dart';
import 'package:google_fonts/google_fonts.dart';

class hadeth_content extends StatefulWidget {

  static const String RoutName = "hadethcontent";

  @override
  State<hadeth_content> createState() => _hadeth_contentState();
}

class _hadeth_contentState extends State<hadeth_content> {

  List<String> hadethsList = [];

  @override
  Widget build(BuildContext context) {

    hadeth_args theHadeth = ModalRoute.of(context)?.settings.arguments as hadeth_args;

    if (hadethsList.isEmpty) {
      getFileData(theHadeth.index);
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
              theHadeth.hadethName,
              style: GoogleFonts.arefRuqaa(color:Colors.black87,fontSize: 40),
            )),
        body: hadethsList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
          // separatorBuilder: (context, index) => Divider(
          //     thickness: 0.1,
          //     indent: 40,
          //     endIndent: 40,
          //     color: Colors.black),
          itemBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  // "(${index + 1})"
                      " ${hadethsList[index]}",
                  style: GoogleFonts.elMessiri(fontSize: 20,color: Color(0xff242424)),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                ),
              ),
            );
          },
          itemCount: hadethsList.length,
        ),
      ),
    );
  }

  Future<void> getFileData(int index) async {
  String verses = await rootBundle.loadString("assets/hadeth/${index + 1}.txt");
  List<String> lines = verses.split("\n");
  hadethsList = lines;
  setState(() {});
}

}
