import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class dua extends StatefulWidget {
  static const String routname = 'dua';

  @override
  State<dua> createState() => _duaState();
}

class _duaState extends State<dua> {
  List<String> duas = [];

  @override
  Widget build(BuildContext context) {
    int selectdus = ModalRoute.of(context)?.settings.arguments as int;
    if(duas.isEmpty){
      looddua(selectdus);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dua($selectdus)",
          style:Theme.of(context).textTheme.headline2,
        ),
      ),
      body:duas.length==0?Center(child: CircularProgressIndicator()) :ListView.builder(
        itemCount: duas.length,
          itemBuilder: (context,index){
        return Container(
          padding: EdgeInsets.only(left: 20,right: 5),
          alignment: Alignment.topRight,
            child: Text("${duas[index]}",style: TextStyle(fontSize: 25,color: CupertinoColors.black),));
      }),

    );
  }

  void looddua(int index) async {
    String duacontent = await rootBundle.loadString("assets/dua/h$index.txt");
    List<String> liens = duacontent.split("\n");
    duas = liens;
    setState(() {

    });
  }
}
