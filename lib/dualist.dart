import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/dua.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class dualist extends StatelessWidget {
  static const String routname = 'dualist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.duaList,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: ListView.separated(
        itemCount: 25,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.pushNamed(context, dua.routname,
                  arguments:index+1 );
            },
            child: Container(
                height: MediaQuery.of(context).size.height * .08,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Dua Number ${index + 1}",
                  style: Theme.of(context).textTheme.headline1,
                ))),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          );
        },
      ),
    );
  }
}
