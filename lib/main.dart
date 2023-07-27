import 'package:flutter/material.dart';
import 'package:moslem/allah.dart';
import 'package:moslem/bookmark.dart';
import 'package:moslem/dua.dart';
import 'package:moslem/dualist.dart';
import 'package:moslem/hadees.dart';
import 'package:moslem/mythem.dart';
import 'package:moslem/other.dart';
import 'package:moslem/other/azkar.dart';
import 'package:moslem/other/eman.dart';
import 'package:moslem/other/hajj.dart';
import 'package:moslem/other/rshala.dart';
import 'package:moslem/other/sahaba.dart';
import 'package:moslem/other/sahada.dart';
import 'package:moslem/other/umrah.dart';
import 'package:moslem/other/zka.dart';
import 'package:moslem/prayertime.dart';
import 'package:moslem/provider/providemode.dart';
import 'package:moslem/provider/providerhajj.dart';
import 'package:moslem/provider/providerlan.dart';
import 'package:moslem/provider/quranday.dart';
import 'package:moslem/qabahdir.dart';
import 'package:moslem/quran.dart';
import 'package:moslem/quranday.dart';
import 'package:moslem/quranname.dart';
import 'package:moslem/tasbih.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'hadeeslist.dart';
import 'home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => providerlan()),
        ChangeNotifierProvider(create: (_) => providermode()),
        ChangeNotifierProvider(create: (_) => providerhajj()),
        ChangeNotifierProvider(create: (_) => providerquranday()),

      ],
      child: MyApp()),);
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<providerlan>(context);
    var prom =Provider.of<providermode>(context);

    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'),
      ],
      locale: Locale(pro.locallan),
      debugShowCheckedModeBanner: false,
      initialRoute:home.routname ,
      routes: {
        home.routname:(context)=>home(),
        hadeeslist.routname:(context)=>hadeeslist(),
        dualist.routname:(context)=>dualist(),
        quranname.routname:(context)=>quranname(),
        quran.routname:(context)=>quran(),
        quranday.routname:(context)=>quranday(),
        hadees.routname:(context)=>hadees(),
        dua.routname:(context)=>dua(),
        tasbih.routname:(context)=>tasbih(),
        allah.routname:(context)=>allah(),
        prayertime.routname:(context)=>prayertime(),
        qabahdir.routname:(context)=>qabahdir(),
        other.routname:(context)=>other(),
        hajj.routname:(context)=>hajj(),
        umrah.routname:(context)=>umrah(),
        azkar.routname:(context)=>azkar(),
        zka.routname:(context)=>zka(),
        sahada.routname:(context)=>sahada(),
        rshala.routname:(context)=>rshala(),
        eman.routname:(context)=>eman(),
        sahaba.routname:(context)=>sahaba(),
        bookmark.routname:(context)=>bookmark(),



      },
      theme: mythem.ligh,
      darkTheme: mythem.darkmode,
      themeMode: prom.localmode,
    );
  }
}


