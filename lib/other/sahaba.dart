import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/providerhajj.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sahaba extends StatelessWidget {
  static const String routname = 'sahaba';

  @override
  Widget build(BuildContext context) {
    var prohajj = Provider.of<providerhajj>(context);
    prohajj.loodhajj("sahaba");
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.sahaba,
            style: Theme.of(context).textTheme.headline2),
      ),
      body: ListView.builder(
          itemCount: prohajj.contentselect.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                alignment: Alignment.topRight,
                child: Text(
                  "${prohajj.contentselect[index]}",
                  style: Theme.of(context).textTheme.headline3,
                ));
          }),
    );
  }
}
