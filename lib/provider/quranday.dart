import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class providerquranday extends ChangeNotifier{
  List<String> contentselect = [];
  void loodquranday(int select) async {
    String content = await rootBundle.loadString("assets/file/$select.txt");
    List<String> contentsplit = content.split("\n");
    contentselect = contentsplit;
    notifyListeners();
  }

}
