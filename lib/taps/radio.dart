import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class radio extends StatelessWidget {
  const radio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/images/radio-vector.png"),
        Text("مازال تحت التجهيز",style:Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 30,color: Colors.red,decoration: TextDecoration.underline),),
        Text(AppLocalizations.of(context)!.theradio,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.skip_previous,size: 40,),
            Icon(Icons.play_arrow,size: 40),
            Icon(Icons.skip_next,size: 40),
          ],
        )
      ],
    );
  }
}
