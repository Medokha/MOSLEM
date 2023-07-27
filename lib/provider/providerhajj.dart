import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class providerhajj extends ChangeNotifier{
  List<String> contentselect = [];
  void loodhajj(String select) async {
    String content = await rootBundle.loadString("assets/other/$select.txt");
    List<String> contentsplit = content.split("\n");
    contentselect = contentsplit;
    notifyListeners();
  }
}