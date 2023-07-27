import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class hadees extends StatefulWidget {
  static const String routname = 'hadees';

  @override
  State<hadees> createState() => _hadeesState();
}

class _hadeesState extends State<hadees> {
  List<String> hadeess =[];
  @override
  Widget build(BuildContext context) {
    int select=ModalRoute.of(context)?.settings.arguments as int;
    if(hadeess.isEmpty){
      loodhadees(select+1);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.ahadees,
            style: Theme.of(context).textTheme.headline2),
      ),
      body: ListView.builder(
        itemCount: hadeess.length,
          itemBuilder: (context,index){
        return Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            alignment: Alignment.topRight,
            child: Text("${hadeess[index]}",style: TextStyle(fontSize: 30,color: CupertinoColors.black),));
      }),
    );
  }

  void loodhadees (int index) async {
    String hadees_con =await rootBundle.loadString("assets/hadeth/h$index.txt");
    List<String> hadeesline=hadees_con.split("\n");
    hadeess=hadeesline;
    setState(() {

    });
  }
}
