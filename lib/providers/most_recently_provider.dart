import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MostRecentlyProvider extends ChangeNotifier{
  List<int> mostRecentlySuraList=[];
  void getMostRecentlySuraList() async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    List<String> mostRecentlyIndicesAsString=prefs.getStringList(SharedPrefsKeys.mostRecentlyKey)??[];
    mostRecentlySuraList=mostRecentlyIndicesAsString.map((e) => int.parse(e)).toList();
    notifyListeners();
  }
}