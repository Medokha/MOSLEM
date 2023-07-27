import 'package:flutter/material.dart';
class providerlan extends ChangeNotifier{
  String locallan='en';
  void changelan (String select){
    locallan =select;
    notifyListeners();
  }
}