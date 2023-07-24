import 'package:flutter/material.dart';
import 'package:islami/myTheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sebha extends StatefulWidget {
  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  double angle = 0;

  int tasbehCounter = 0;

  List<String> azkar = ['سبحان الله', 'الحمدلله', 'الله أكبر'];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: Height * 0.028),
            child: GestureDetector(
              onTap: () {
                onSebhaClicked();
              },
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Width * 0.1),
                    child: Image.asset("assets/images/head_of_seb7a.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: Height * 0.1),
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset("assets/images/body_of_seb7a.png")),
                  ),
                ],
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.numOfTasbeh,
            textAlign: TextAlign.center,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              "$tasbehCounter",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              azkar[index],
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: myThemeData.laban),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 220, top: 20),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor,
              ),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      tasbehCounter = 0;
                      index = 0;
                    });
                  },
                  icon: Icon(Icons.replay_rounded)),
            ),
          )
        ],
      ),
    );
  }

  void onSebhaClicked() {
    angle += 33;
    tasbehCounter++;
    if (tasbehCounter == 33) {
      index++;
      tasbehCounter = 0;
    }
    if (index == azkar.length) {
      index = 0;
    }

    setState(() {});
  }
}
