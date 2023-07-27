import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/provider/quranday.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class quranday extends StatelessWidget {
  static const String routname = 'quranday';
  int randomNumber = Random().nextInt(113) + 1;
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<providerquranday>(context);
    if (pro.contentselect.isEmpty) {
      pro.loodquranday(randomNumber);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.quran,
            style: Theme.of(context).textTheme.headline2),
      ),
      body: ListView.builder(
          itemCount: pro.contentselect.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                alignment: Alignment.topRight,
                child: Text(
                  "${pro.contentselect[index]}",
                  style: Theme.of(context).textTheme.headline3,
                ));
          }),
    );
  }
}
