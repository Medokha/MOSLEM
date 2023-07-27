import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class qabahdir extends StatelessWidget {
  static const String routname ='qabahdir';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.qabahDirection,
            style: Theme.of(context).textTheme.headline2),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.04,
            ),
            Text(AppLocalizations.of(context)!.qabahDirectionis,
                style: Theme.of(context).textTheme.headline1),
            Text("256",
                style: Theme.of(context).textTheme.headline1),
            Text(AppLocalizations.of(context)!.southWest,
                style: Theme.of(context).textTheme.headline1),
            SizedBox(
              height: MediaQuery.of(context).size.height*.04,
            ),
            Image.asset("assets/images/dire.png"),
          ],),
      ),
    );
  }
}
