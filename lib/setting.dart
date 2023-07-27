import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/mythem.dart';
import 'package:moslem/provider/providemode.dart';
import 'package:moslem/provider/providerlan.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<providerlan>(context);
    var prom =Provider.of<providermode>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.setting,
            style:Theme.of(context).textTheme.headline2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        Text(AppLocalizations.of(context)!.language,
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        InkWell(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height * .1,
                            decoration: BoxDecoration(
                              color:pro.locallan=='en'?Theme.of(context).colorScheme.onPrimary:Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(AppLocalizations.of(context)!.english,
                                  style: Theme.of(context).textTheme.headline2),
                            ),
                          ),
                          onTap: (){
                            pro.changelan('en');
                            Navigator.pop(context);

                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        InkWell(
                          onTap: (){
                            pro.changelan('ar');
                            Navigator.pop(context);
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height * .1,
                            decoration: BoxDecoration(
                              color:pro.locallan=='ar'?Theme.of(context).colorScheme.onPrimary:Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(AppLocalizations.of(context)!.arabic,
                                  style: Theme.of(context).textTheme.headline2),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * .1,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child:pro.locallan=='en'? Text(AppLocalizations.of(context)!.english,
                        style: Theme.of(context).textTheme.headline2) :Text(AppLocalizations.of(context)!.arabic,
                        style: Theme.of(context).textTheme.headline2),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Text(
              AppLocalizations.of(context)!.mode,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        Text(AppLocalizations.of(context)!.mode,
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        InkWell(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height * .1,
                            decoration: BoxDecoration(
                              color:prom.localmode==ThemeMode.light? Theme.of(context).colorScheme.onPrimary :Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(AppLocalizations.of(context)!.light,
                                  style: Theme.of(context).textTheme.headline2),
                            ),
                          ),
                          onTap: (){
                            prom.changemode(ThemeMode.light);
                            Navigator.pop(context);

                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        InkWell(
                          onTap: (){
                            prom.changemode(ThemeMode.dark);
                            Navigator.pop(context);

                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height * .1,
                            decoration: BoxDecoration(
                              color:prom.localmode==ThemeMode.dark? Theme.of(context).colorScheme.onPrimary :Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(AppLocalizations.of(context)!.dark,
                                  style: Theme.of(context).textTheme.headline2),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * .1,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child:prom.localmode ==ThemeMode.light? Text(AppLocalizations.of(context)!.light,
                        style: Theme.of(context).textTheme.headline2) : Text(AppLocalizations.of(context)!.dark,
                        style:Theme.of(context).textTheme.headline2),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
