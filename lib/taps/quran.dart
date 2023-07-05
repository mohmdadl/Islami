import 'package:flutter/material.dart';
import 'package:islami/sura_args.dart';
import 'package:islami/sura_content.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class quran extends StatelessWidget {
  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/quran_pg.png"),
          Divider(
            thickness: 2,
            color: Brightness.light == Theme.of(context).brightness
                  ? Color(0xffB7935F)
                  :Color(0xfffFACC1D),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  AppLocalizations.of(context)!.sura_name,

                  style:Theme.of(context).textTheme.bodyMedium,

                ),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height * 0.04,
              //   child: VerticalDivider(
              //     thickness: 4,
              //     color: Theme.of(context).primaryColor,
              //   ),
              // ),
              // Expanded(
              //   child: Text(
              //     textAlign: TextAlign.center ,
              //     "Sura Name",
              //     style: Theme.of(context)
              //         .textTheme
              //         .bodyMedium!
              //         .copyWith(color: Colors.black),
              //   ),
              // ),
            ],
          ),
          Divider(
            thickness: 2,
           color: Brightness.light == Theme.of(context).brightness
                  ? Color(0xffB7935F)
                  :Color(0xfffFACC1D),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {

                return Expanded(
                  child: InkWell(
                    onTap: (){

                      Navigator.pushNamed(context, sura_content.RoutName,arguments: sura_args(suraName: suraNames[index], index: index));
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      " ${suraNames[index]}" ,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                );
              },
              itemCount: suraNames.length,
            ),
          ),
        ],
        // backgroundColor: Colors.amber,
      ),
    );
  }
}
