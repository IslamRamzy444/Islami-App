import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsKeys{
  static const String mostRecentlyKey="most-recently";
}
void saveNewSuraList(int newSuraIndex)async{
  final SharedPreferences prefs=await SharedPreferences.getInstance();
  List<String> mostRecentlyIndicesList=prefs.getStringList(SharedPrefsKeys.mostRecentlyKey)??[];
  if(mostRecentlyIndicesList.contains('$newSuraIndex')){
    mostRecentlyIndicesList.remove('$newSuraIndex');
    mostRecentlyIndicesList.insert(0, "$newSuraIndex");
  }else{
    mostRecentlyIndicesList.insert(0, "$newSuraIndex");
  }
  if(mostRecentlyIndicesList.length>5){
    mostRecentlyIndicesList=mostRecentlyIndicesList.sublist(0,5);
  }
  await prefs.setStringList(SharedPrefsKeys.mostRecentlyKey,mostRecentlyIndicesList);
}

