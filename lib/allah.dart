import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class allah extends StatefulWidget {
  static const String routname = 'allah';

  @override
  State<allah> createState() => _allahState();
}

class _allahState extends State<allah> {
  int number=0;
  int number2=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.alla,
            style: Theme.of(context).textTheme.headline2),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.1,
            ),
            InkWell(
              onTap: (){
                number++;
                if(number>100){
                  number=1;
                }
                setState(() {

                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height*.07,
                width: MediaQuery.of(context).size.width*.7,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                child: Center(
                  child: Text(
                    "لا اله الا الله",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.1,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.07,
              width: MediaQuery.of(context).size.width*.15,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onBackground,
              ),
              child: Center(
                child: Text(
                  "$number",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height*.1,
            ),
            InkWell(
              onTap: (){
                number2++;
                if(number2>100){
                  number2=1;
                }
                setState(() {

                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height*.07,
                width: MediaQuery.of(context).size.width*1,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                child: Center(
                  child: Text(
                    "اللهم صلى و سلم و بارك على سيدنا محمد",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.1,
            ),
            Container(
              height: MediaQuery.of(context).size.height*.07,
              width: MediaQuery.of(context).size.width*.15,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onBackground,
              ),
              child: Center(
                child: Text(
                  "$number2",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
