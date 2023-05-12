import 'package:flutter/material.dart';

class quran extends StatelessWidget {
  List suraList = [
    {'name': 'الفاتحه', 'verses': '7'},
    {'name': 'البقرة', 'verses': '286'},
    {'name': 'آل عمران', 'verses': '200'},
    {'name': 'النساء', 'verses': '176'},
    {'name': 'المائدة', 'verses': '120'},
    {'name': 'الأنعام', 'verses': '165'},
    {'name': 'الأعراف', 'verses': '206'},
    {'name': 'الأنفال', 'verses': '75'},
    {'name': 'التوبة', 'verses': '129'},
    {'name': 'يونس', 'verses': '109'},
    {'name': 'هود', 'verses': '123'},
    {'name': 'يوسف', 'verses': '111'},
    {'name': 'الرعد', 'verses': '43'},
    {'name': 'إبراهيم', 'verses': '52'},
    {'name': 'الحجر', 'verses': '99'},
    {'name': 'النحل', 'verses': '128'},
    {'name': 'الإسراء', 'verses': '111'},
    {'name': 'الكهف', 'verses': '110'},
    {'name': 'مريم', 'verses': '98'},
    {'name': 'طه', 'verses': '135'},
    {'name': 'الأنبياء', 'verses': '112'},
    {'name': 'الحج', 'verses': '78'},
    {'name': 'المؤمنون', 'verses': '118'},
    {'name': 'النّور', 'verses': '64'},
    {'name': 'الفرقان', 'verses': '77'},
    {'name': 'الشعراء', 'verses': '227'},
    {'name': 'النّمل', 'verses': '93'},
    {'name': 'القصص', 'verses': '88'},
    {'name': 'العنكبوت', 'verses': '69'},
    {'name': 'الرّوم', 'verses': '60'},
    {'name': 'لقمان', 'verses': '34'},
    {'name': 'السجدة', 'verses': '30'},
    {'name': 'الأحزاب', 'verses': '73'},
    {'name': 'سبأ', 'verses': '54'},
    {'name': 'فاطر', 'verses': '45'},
    {'name': 'يس', 'verses': '83'},
    {'name': 'الصافات', 'verses': '182'},
    {'name': 'ص', 'verses': '88'},
    {'name': 'الزمر', 'verses': '75'},
    {'name': 'غافر', 'verses': '85'},
    {'name': 'فصّلت', 'verses': '54'},
    {'name': 'الشورى', 'verses': '53'},
    {'name': 'الزخرف', 'verses': '89'},
    {'name': 'الدّخان', 'verses': '59'},
    {'name': 'الجاثية', 'verses': '37'},
    {'name': 'الأحقاف', 'verses': '35'},
    {'name': 'محمد', 'verses': '38'},
    {'name': 'الفتح', 'verses': '29'},
    {'name': 'الحجرات', 'verses': '18'},
    {'name': 'ق', 'verses': '45'},
    {'name': 'الذاريات', 'verses': '60'},
    {'name': 'الطور', 'verses': '49'},
    {'name': 'النجم', 'verses': '62'},
    {'name': 'القمر', 'verses': '55'},
    {'name': 'الرحمن', 'verses': '78'},
    {'name': 'الواقعة', 'verses': '96'},
    {'name': 'الحديد', 'verses': '29'},
    {'name': 'المجادلة', 'verses': '22'},
    {'name': 'الحشر', 'verses': '24'},
    {'name': 'الممتحنة', 'verses': '13'},
    {'name': 'الصف', 'verses': '14'},
    {'name': 'الجمعة', 'verses': '11'},
    {'name': 'المنافقون', 'verses': '11'},
    {'name': 'التغابن', 'verses': '18'},
    {'name': 'الطلاق', 'verses': '12'},
    {'name': 'التحريم', 'verses': '12'},
    {'name': 'الملك', 'verses': '30'},
    {'name': 'القلم', 'verses': '52'},
    {'name': 'الحاقة', 'verses': '52'},
    {'name': 'المعارج', 'verses': '44'},
    {'name': 'نوح', 'verses': '28'},
    {'name': 'الجن', 'verses': '28'},
    {'name': 'المزّمّل', 'verses': '20'},
    {'name': 'المدّثر', 'verses': '56'},
    {'name': 'القيامة', 'verses': '40'},
    {'name': 'الإنسان', 'verses': '31'},
    {'name': 'المرسلات', 'verses': '50'},
    {'name': 'النبأ', 'verses': '40'},
    {'name': 'النازعات', 'verses': '46'},
    {'name': 'عبس', 'verses': '42'},
    {'name': 'التكوير', 'verses': '29'},
    {'name': 'الإنفطار', 'verses': '19'},
    {'name': 'المطفّفين', 'verses': '36'},
    {'name': 'الإنشقاق', 'verses': '25'},
    {'name': 'البروج', 'verses': '22'},
    {'name': 'الطارق', 'verses': '17'},
    {'name': 'الأعلى', 'verses': '19'},
    {'name': 'الغاشية', 'verses': '26'},
    {'name': 'الفجر', 'verses': '30'},
    {'name': 'البلد', 'verses': '20'},
    {'name': 'الشمس', 'verses': '15'},
    {'name': 'الليل', 'verses': '21'},
    {'name': 'الضحى', 'verses': '11'},
    {'name': 'الشرح', 'verses': '8'},
    {'name': 'التين', 'verses': '8'},
    {'name': 'العلق', 'verses': '19'},
    {'name': 'القدر', 'verses': '5'},
    {'name': 'البينة', 'verses': '8'},
    {'name': 'الزلزلة', 'verses': '8'},
    {'name': 'العاديات', 'verses': '11'},
    {'name': 'القارعة', 'verses': '11'},
    {'name': 'التكاثر', 'verses': '8'},
    {'name': 'العصر', 'verses': '3'},
    {'name': 'الهمزة', 'verses': '9'},
    {'name': 'الفيل', 'verses': '5'},
    {'name': 'قريش', 'verses': '4'},
    {'name': 'الماعون', 'verses': '7'},
    {'name': 'الكوثر', 'verses': '3'},
    {'name': 'الكافرون', 'verses': '6'},
    {'name': 'النصر', 'verses': '3'},
    {'name': 'المسد', 'verses': '5'},
    {'name': 'الإخلاص', 'verses': '4'},
    {'name': 'الفلق', 'verses': '5'},
    {'name': 'الناس', 'verses': '6'},
  ];
  List<String> suraNames = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/quran_pg.png"),
          Divider(
            thickness: 2,
            color: Theme.of(context).primaryColor,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "Sura Name",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.04,
                child: VerticalDivider(
                  thickness: 4,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "Sura Name",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.black),
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
              itemBuilder: (context, index){
                final sura = suraList[index];
                return Expanded(
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      sura['name'],
                      style: TextStyle(color: Colors.black),
                    ),
                    VerticalDivider(
                      width: 20,
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      '${sura['verses']} verses',
                      style: TextStyle(color: Colors.black),
                    ),

                  ],
                ),
              );

              }
               ,
              itemCount: 114,
            ),
          ),
        ],
        // backgroundColor: Colors.amber,
      ),
    );
  }
}
