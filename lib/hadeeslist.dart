import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/hadees.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class hadeeslist extends StatelessWidget {
  static const String routname = "hadeeslist";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.ahadeesList,
              style: Theme.of(context).textTheme.headline2),
        ),
        body: ListView.separated(
            itemCount: 50,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, hadees.routname,
                      arguments: index);
                },
                child: Container(
                    height: MediaQuery.of(context).size.height * .08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: Center(
                        child: Text(
                      "Number Of Hadees${index + 1}",
                      style: Theme.of(context).textTheme.headline1,
                    ))),
              );
            }, separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              );
        },));
  }
}
