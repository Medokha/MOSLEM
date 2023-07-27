import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/other/azkar.dart';
import 'package:moslem/other/eman.dart';
import 'package:moslem/other/hajj.dart';
import 'package:moslem/other/rshala.dart';
import 'package:moslem/other/sahaba.dart';
import 'package:moslem/other/sahada.dart';
import 'package:moslem/other/umrah.dart';
import 'package:moslem/other/zka.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'items.dart';

class other extends StatelessWidget {
  static const String routname = 'other';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.other,
            style: Theme.of(context).textTheme.headline2),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
          ),
          items(AppLocalizations.of(context)!.hajj,AppLocalizations.of(context)!.umrah,hajj.routname,umrah.routname),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
          ),
          items(AppLocalizations.of(context)!.azkar,AppLocalizations.of(context)!.zka,azkar.routname,zka.routname),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
          ),
          items(AppLocalizations.of(context)!.sahada,AppLocalizations.of(context)!.rshala,sahada.routname,rshala.routname),
          SizedBox(
            height: MediaQuery.of(context).size.height*.07,
          ),
          items(AppLocalizations.of(context)!.eman,AppLocalizations.of(context)!.sahaba,eman.routname,sahaba.routname),

        ],
      ),
    );
  }
}
