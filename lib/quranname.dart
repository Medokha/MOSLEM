import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moslem/bookmark.dart';
import 'package:moslem/suramodel.dart';

class quranname extends StatefulWidget {
  static const String routname = 'quranname';
  int count = 0;

  @override
  State<quranname> createState() => _qurannameState();
}

class _qurannameState extends State<quranname> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    suramodel args = ModalRoute.of(context)?.settings.arguments as suramodel;
    if (ayat.isEmpty) {
      loodfile(args.index);
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        body: ayat.length == 0
            ? Center(child: CircularProgressIndicator())
            : InkWell(
                child: ListView.builder(
                    itemCount: ayat.length,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          alignment: Alignment.topRight,
                          child: Text(
                            "${ayat[index]}",
                            style: Theme.of(context).textTheme.headline2,
                          ));
                    }),
                onTap: () {
                  bookmodel.get(args.name, "${ayat[1]}");
                },
              ));
  }

  void loodfile(int index) async {
    String content = await rootBundle.loadString("assets/file/$index.txt");
    List<String> liens = content.split("\n");
    ayat = liens;
    setState(() {});
  }
}
