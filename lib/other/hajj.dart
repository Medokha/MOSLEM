import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moslem/provider/providerhajj.dart';
import 'package:provider/provider.dart';

class hajj extends StatefulWidget {
  static const String routname = 'hajj';

  @override
  State<hajj> createState() => _hajjState();
}

class _hajjState extends State<hajj> {
  @override
  Widget build(BuildContext context) {
    var prohajj = Provider.of<providerhajj>(context);
    prohajj.loodhajj("hajj");
    return Scaffold(
      appBar: AppBar(
        title: Text("Hajj", style: Theme.of(context).textTheme.headline2),
      ),
      body: ListView.builder(
          itemCount: prohajj.contentselect.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                alignment: Alignment.topRight,
                child: Text(
                  "${prohajj.contentselect[index]}",
                  style:Theme.of(context).textTheme.headline3,
                ));
          }),
    );
  }
}
