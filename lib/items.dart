import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moslem/quranday.dart';

class items extends StatelessWidget {
  String one;
  String two;
  var rout1;
  var rout2;

  items(this.one,this.two,this.rout1,this.rout2);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          child: Container(
            height: MediaQuery.of(context).size.height*.07,
            width: MediaQuery.of(context).size.width*.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Theme.of(context).colorScheme.background
            ),
            child: Center(
              child: Text(
                one,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
          onTap: (){
            Navigator.pushNamed(context, rout1);
          },
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, rout2);
          },
          child: Container(
            height: MediaQuery.of(context).size.height*.07,
            width: MediaQuery.of(context).size.width*.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.background
            ),
            child: Center(
              child: Text(
                two,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        ),

      ],
    );
  }
}
