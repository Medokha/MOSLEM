import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class tasbih extends StatefulWidget {
  static const String routname = 'tasbih';

  @override
  State<tasbih> createState() => _tasbihState();
}

class _tasbihState extends State<tasbih> {
  int number1=0;

  int number2=0;

  int number3=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.tasbih,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            InkWell(
              onTap: (){
                number1++;
                if(number1>33){
                  number1=1;
                }
                setState(() {

                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                child: Center(
                  child: Text(
                    "سبحان الله",
                    style:Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery.of(context).size.width * .15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  "$number1",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            InkWell(
              onTap: (){
                number2++;
                if(number2>33){
                  number2=1;
                }
                setState(() {

                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Theme.of(context).colorScheme.onPrimary,
                ),
                child: Center(
                  child: Text(
                    "الحمد الله",
                    style:Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery.of(context).size.width * .15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  "$number2",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            InkWell(
              onTap: (){
                number3++;
                if(number3>33){
                  number3=1;
                }
                setState(() {

                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                child: Center(
                  child: Text(
                    "استغفر الله",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .07,
              width: MediaQuery.of(context).size.width * .15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Center(
                child: Text(
                  "$number3",
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
