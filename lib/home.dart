import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/bookmark.dart';
import 'package:moslem/quran.dart';
import 'package:moslem/search.dart';
import 'package:moslem/setting.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'homee.dart';

class home extends StatefulWidget {
  static const String routname = 'home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentinex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        body: tabs[currentinex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentinex,
            onTap: (i){
              currentinex=i;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/home_nfill.png",)),
                  label: AppLocalizations.of(context)!.home,),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/search.png")),
                  label: AppLocalizations.of(context)!.search,
                  ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran_nfill.png")),
                  label: AppLocalizations.of(context)!.quran,
                  ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/bookmark_nfill.png")),
                  label: AppLocalizations.of(context)!.bookmark,
                  ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/setting_nfill.png")),
                  label: AppLocalizations.of(context)!.setting,
                  ),
            ]),

          ),
      // Image.asset("assets/images/daymode.png"),
      // Center(
      //   child: SingleChildScrollView(
      //       child: Column(
      //     children: [
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * .05,
      //       ),
      //       Text(
      //         "MOSLEM",
      //         style: Theme.of(context).textTheme.headline1,
      //       ),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * .02,
      //       ),
      //       Container(
      //         child: Column(
      //           children: [
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .02,
      //             ),
      //             Row(
      //               children: [
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .03,
      //                 ),
      //                 Image.asset('assets/images/logo.png'),
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .03,
      //                 ),
      //                 Text(
      //                   "MOSLEM",
      //                   style: Theme.of(context).textTheme.headline1,
      //                 ),
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .38,
      //                 ),
      //                 Image.asset('assets/images/noti.png'),
      //               ],
      //             ),
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .02,
      //             ),
      //             Divider(
      //               thickness: 2,
      //               color: Colors.black26,
      //             ),
      //             Row(
      //               children: [
      //                 SizedBox(
      //                   height: MediaQuery.of(context).size.height * .05,
      //                 ),
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .03,
      //                 ),
      //                 Text(
      //                   "Current location",
      //                   style: TextStyle(fontSize: 20, color: Colors.black),
      //                 ),
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .1,
      //                 ),
      //                 Text("Change location",
      //                     style: TextStyle(fontSize: 12, color: Colors.green)),
      //               ],
      //             ),
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .02,
      //             ),
      //             Divider(
      //               thickness: 2,
      //               color: Colors.black26,
      //             ),
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .02,
      //             ),
      //             Row(
      //               children: [
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .03,
      //                 ),
      //                 Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       "Setamper 20,2022",
      //                       style: TextStyle(fontSize: 20, color: Colors.black),
      //                     ),
      //                     SizedBox(
      //                       height: MediaQuery.of(context).size.height * .01,
      //                     ),
      //                     Text("Next Prayer Timing :",
      //                         style:
      //                             TextStyle(fontSize: 15, color: Colors.black)),
      //                     SizedBox(
      //                       height: MediaQuery.of(context).size.height * .01,
      //                     ),
      //                     Text("--",
      //                         style:
      //                             TextStyle(fontSize: 15, color: Colors.black)),
      //                   ],
      //                 ),
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .2,
      //                 ),
      //                 Image.asset('assets/images/kiblat.png'),
      //               ],
      //             ),
      //           ],
      //         ),
      //         height: MediaQuery.of(context).size.height * .4,
      //         width: MediaQuery.of(context).size.width * .9,
      //         // color: Colors.red,
      //         decoration: BoxDecoration(
      //             color: Colors.white70,
      //             borderRadius: BorderRadius.circular(20)),
      //       ),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * .05,
      //       ),
      //       Container(
      //         child: Column(
      //           children: [
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .03,
      //             ),
      //             Row(
      //               children: [
      //                 SizedBox(
      //                   width: MediaQuery.of(context).size.width * .03,
      //                 ),
      //                 Text(
      //                   "Collection",
      //                   style: Theme.of(context).textTheme.headline1,
      //                 ),
      //               ],
      //             ),
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .02,
      //             ),
      //             Divider(
      //               thickness: 2,
      //               color: Colors.black26,
      //             ),
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .02,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Column(
      //                   children: [
      //                     Image.asset("assets/images/quran.png"),
      //                     Text(
      //                       "Quran",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Image.asset("assets/images/hadees.png"),
      //                     Text(
      //                       "Hadees",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Image.asset("assets/images/duas.png"),
      //                     Text(
      //                       "Duas",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Image.asset("assets/images/tasbih.png"),
      //                     Text(
      //                       "Tasbih",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //               ],
      //             ),
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .04,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Column(
      //                   children: [
      //                     Image.asset(
      //                       "assets/images/allah.png",
      //                     ),
      //                     Text(
      //                       "Allah",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Image.asset("assets/images/prayer_time.png"),
      //                     Text(
      //                       "Prayer",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     ),
      //                     Text(
      //                       "Time",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Image.asset("assets/images/kibla.png"),
      //                     Text(
      //                       "Qabah",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     ),
      //                     Text(
      //                       "Direction",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //                 Column(
      //                   children: [
      //                     Image.asset("assets/images/other.png"),
      //                     Text(
      //                       "Other",
      //                       style: TextStyle(fontSize: 15, color: Colors.black),
      //                     )
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //         height: MediaQuery.of(context).size.height * .4,
      //         width: MediaQuery.of(context).size.width * .9,
      //         // color: Colors.red,
      //         decoration: BoxDecoration(
      //             color: Colors.white70,
      //             borderRadius: BorderRadius.circular(20)),
      //       ),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * .05,
      //       ),
      //       Container(
      //         child: Column(
      //           children: [
      //             SizedBox(
      //               height: MediaQuery.of(context).size.height * .03,
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Text(
      //                   "Quran Ayat Of The Day",
      //                   style: TextStyle(fontSize: 20, color: Colors.black),
      //                 )
      //               ],
      //             ),
      //             Divider(
      //               thickness: 2,
      //               color: Colors.black26,
      //             ),
      //           ],
      //         ),
      //         height: MediaQuery.of(context).size.height * .4,
      //         width: MediaQuery.of(context).size.width * .9,
      //         // color: Colors.red,
      //         decoration: BoxDecoration(
      //             color: Colors.white70,
      //             borderRadius: BorderRadius.circular(20)),
      //       ),
      //       SizedBox(
      //         height: MediaQuery.of(context).size.height * .05,
      //       ),
      //     ],
      //   )),
      // ),
      // Container(
      //   alignment: Alignment.bottomCenter,
      //   child: BottomNavigationBar(
      //     currentIndex: currentinex,
      //     onTap: (i){
      //       currentinex=i;
      //       setState(() {
      //
      //       });
      //     },
      //     selectedItemColor: Colors.green,
      //       unselectedItemColor: Colors.grey,
      //       items: [
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/home_nfill.png",)),
      //         label: "Home",
      //         backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/search.png")),
      //         label: "Search",
      //         backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/quran_nfill.png")),
      //         label: "Quran",
      //         backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/bookmark_nfill.png")),
      //         label: "Bookmark",
      //         backgroundColor: Colors.white),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(AssetImage("assets/images/setting_nfill.png")),
      //         label: "Setting",
      //         backgroundColor: Colors.white),
      //   ]),
      // ),
    ]);
  }

  List<Widget> tabs=[
    homee(),
    search(),
    quran(),
    bookmark(),
    setting(),
  ];
}
