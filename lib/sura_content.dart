import 'package:flutter/material.dart';
import 'package:islami/sura_args.dart';

class sura_content extends StatelessWidget {
  static const String RoutName = "suraContent";

  @override
  Widget build(BuildContext context) {
    sura_args sura=ModalRoute.of(context)?.settings.arguments as sura_args;
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/main_bg.png"),fit: BoxFit.fill)),
      child: Scaffold(
        appBar:AppBar(title: Text(sura.suraName,style: Theme.of(context).textTheme.bodyLarge,)),
      ),
    );
  }
}
