import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/mythem.dart';
import 'package:moslem/quranname.dart';
import 'package:moslem/suramodel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class quran extends StatelessWidget {
  static const String routname = 'quran';
  List<String> suraname = [
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .05,
        ),
        Container(
          height: MediaQuery.of(context).size.height * .05,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
              ),
              ImageIcon(
                AssetImage("assets/images/bookmark_nfill.png"),
                color: mythem.appbar,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              ImageIcon(
                AssetImage("assets/images/search.png"),
                color: mythem.appbar,
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .05,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .08,
              ),
              Text(
                AppLocalizations.of(context)!.aLQuran,
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        Container(
          height: MediaQuery.of(context).size.height * .08,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                AppLocalizations.of(context)!.surah,
                style: Theme.of(context).textTheme.headline1?.copyWith(color: mythem.appbar),
              ),
              Text(
                AppLocalizations.of(context)!.juz,
                style:Theme.of(context).textTheme.headline1?.copyWith(color: mythem.appbar),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .0001,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: suraname.length,
              itemBuilder: (_, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            child: Center(
                                child: Text(
                              "${index + 1}",
                              style: Theme.of(context).textTheme.headline2,
                            ))),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, quranname.routname,
                                arguments:
                                    suramodel(suraname[index], index + 1));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).colorScheme.background,
                            ),
                            height: MediaQuery.of(context).size.height * .1,
                            width: MediaQuery.of(context).size.width * .7,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "   ${suraname[index]}",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .003,
                    ),
                  ],
                );
              }),
        )
      ],
    );
  }
}
