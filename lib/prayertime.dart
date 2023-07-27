import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class prayertime extends StatelessWidget {
  static const String routname = 'prayertime';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.prayerTime,
            style: Theme.of(context).textTheme.headline2),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Text(AppLocalizations.of(context)!.prayer,
                      style: Theme.of(context).textTheme.headline3)),
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.timing,
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.fajr,
                    style: Theme.of(context).textTheme.headline3,
                  )),
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "4:05 AM",
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.alShrouq,
                    style: Theme.of(context).textTheme.headline3,
                  )),
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "6:00 AM",
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.noon,
                    style: Theme.of(context).textTheme.headline3,
                  )),
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "12:00 AM",
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.alAsr,
                    style: Theme.of(context).textTheme.headline3,
                  )),
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "4:00 PM",
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.maghrib,
                    style: Theme.of(context).textTheme.headline3,
                  )),
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "7:00 PM",
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.secondary,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.alAsha,
                    style: Theme.of(context).textTheme.headline3,
                  )),
              Container(
                  height: MediaQuery.of(context).size.height * .06,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text(
                    "8:30 PM",
                    style: Theme.of(context).textTheme.headline3,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
