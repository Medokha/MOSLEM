import 'package:flutter/material.dart';
import 'package:moslem/mythem.dart';
class providermode extends ChangeNotifier{
  ThemeMode localmode=ThemeMode.light;
  void changemode (ThemeMode select){
    localmode =select;
    notifyListeners();
  }
}