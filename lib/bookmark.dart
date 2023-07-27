import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/suramodel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class bookmark extends StatelessWidget {
  static const String routname = 'bookmark';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.07,
            ),
            Center(
              child: Text(
                bookmodel.gettingname() == '' ? "" : bookmodel.gettingname()!,
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color:Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.04,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Theme.of(context).colorScheme.onBackground
              ),
              margin: EdgeInsets.all(10),
              alignment: Alignment.topRight,
              child: Text(
                  bookmodel.gettingayat() == '' ? "" : bookmodel.gettingayat()!,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
            )
          ],
        ),
      ),
    );
  }
}
