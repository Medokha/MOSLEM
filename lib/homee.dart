import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/allah.dart';
import 'package:moslem/dua.dart';
import 'package:moslem/dualist.dart';
import 'package:moslem/hadees.dart';
import 'package:moslem/hadeeslist.dart';
import 'package:moslem/mythem.dart';
import 'package:moslem/other.dart';
import 'package:moslem/prayertime.dart';
import 'package:moslem/provider/providemode.dart';
import 'package:moslem/qabahdir.dart';
import 'package:moslem/quran.dart';
import 'package:moslem/quranday.dart';
import 'package:moslem/quranname.dart';
import 'package:moslem/tasbih.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
class homee extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var prom =Provider.of<providermode>(context);
    return Stack(children: [
      prom.localmode==ThemeMode.light? Image.asset("assets/images/daymode.png"):Image.asset("assets/images/nighmode.png"),
      Center(
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Text(
                  AppLocalizations.of(context)!.helloWorld,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .03,
                          ),
                          Image.asset('assets/images/logo.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .03,
                          ),
                          Text(
                            AppLocalizations.of(context)!.helloWorld,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .38,
                          ),
                          Image.asset('assets/images/noti.png'),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Divider(
                        thickness: 2,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .05,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .03,
                          ),
                          Text(
                            AppLocalizations.of(context)!.currentlocation,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .25,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, qabahdir.routname);
                            },
                            child: Text(AppLocalizations.of(context)!.changelocation,
                                style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onPrimary)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Divider(
                        thickness: 2,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Setamper 20,2022",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .01,
                              ),
                              Text(AppLocalizations.of(context)!.nextPrayerTiming,
                                  style:
                                  Theme.of(context).textTheme.headline4),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * .01,
                              ),
                              Text("--",
                                  style:
                                  Theme.of(context).textTheme.headline4),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .2,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, qabahdir.routname);
                            },
                              child: Image.asset('assets/images/kiblat.png')),
                        ],
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width * .9,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width * .9,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .03,
                          ),
                          Text(
                            AppLocalizations.of(context)!.collection,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Divider(
                        thickness: 2,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, quranday.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/quran.png"),
                                Text(
                                  "Quran",
                                  style: Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, hadeeslist.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/hadees.png"),
                                Text(
                                  "Hadees",
                                  style: Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, dualist.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/duas.png"),
                                Text(
                                  "Duas",
                                  style: Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, tasbih.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/tasbih.png"),
                                Text(
                                  "Tasbih",
                                  style: Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, allah.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/allah.png",
                                ),
                                Text(
                                  "Allah",
                                  style: Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, prayertime.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/prayer_time.png"),
                                Text(
                                  "Prayer",
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Text(
                                  "Time",
                                  style:Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, qabahdir.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/kibla.png"),
                                Text(
                                  "Qabah",
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Text(
                                  "Direction",
                                  style: Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, other.routname);
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/other.png"),
                                Text(
                                  "Other",
                                  style: Theme.of(context).textTheme.headline4,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.quranAyatOfTheDay,
                            style:Theme.of(context).textTheme.headline1,
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width * .9,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
              ],
            )),
      ),
      // Container(
      //   alignment: Alignment.bottomCenter,
      //   child: BottomNavigationBar(
      //       currentIndex: currentinex,
      //       onTap: (i){
      //         currentinex=i;
      //         setState(() {
      //
      //         });
      //       },
      //       selectedItemColor: Colors.green,
      //       unselectedItemColor: Colors.grey,
      //       items: [
      //         BottomNavigationBarItem(
      //             icon: ImageIcon(AssetImage("assets/images/home_nfill.png",)),
      //             label: "Home",
      //             backgroundColor: Colors.white),
      //         BottomNavigationBarItem(
      //             icon: ImageIcon(AssetImage("assets/images/search.png")),
      //             label: "Search",
      //             backgroundColor: Colors.white),
      //         BottomNavigationBarItem(
      //             icon: ImageIcon(AssetImage("assets/images/quran_nfill.png")),
      //             label: "Quran",
      //             backgroundColor: Colors.white),
      //         BottomNavigationBarItem(
      //             icon: ImageIcon(AssetImage("assets/images/bookmark_nfill.png")),
      //             label: "Bookmark",
      //             backgroundColor: Colors.white),
      //         BottomNavigationBarItem(
      //             icon: ImageIcon(AssetImage("assets/images/setting_nfill.png")),
      //             label: "Setting",
      //             backgroundColor: Colors.white),
      //       ]),
      // ),
    ]);
  }
}
