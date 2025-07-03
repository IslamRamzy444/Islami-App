import 'package:project_1_islami/models/prayer.dart';

class PrayersData {
  static List<Prayer> prayers=[
    Prayer(
      name: "Fajr",
      time: "04:12",
      amOrPm: "AM"
    ),
    Prayer(
      name: "Sun rise", 
      time: "06:00", 
      amOrPm: "AM"
    ),
    Prayer(
      name: "Dhuhr", 
      time: "01:04", 
      amOrPm: "PM"
    ),
    Prayer(
      name: "Asr", 
      time: "04:43", 
      amOrPm: "PM"
    ),
    Prayer(
      name: "Maghreb", 
      time: "08:08", 
      amOrPm: "PM"
    ),
    Prayer(
      name: "Isha", 
      time: "09:43", 
      amOrPm: "PM"
    ),
  ];
}