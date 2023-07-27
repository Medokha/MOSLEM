import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:moslem/mythem.dart';

class search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*.05,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.itemSearch,
            hintStyle: TextStyle(color: mythem.appbar),
            icon: Icon(CupertinoIcons.search,size: 40,color: mythem.appbar,)
          ),
        )
      ],
    );
  }
}
