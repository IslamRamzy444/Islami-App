import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/home_screen.dart';
import 'package:project_1_islami/UI/home/tabs/hadeth/hadeth_detail.dart';
import 'package:project_1_islami/UI/home/tabs/quran/options.dart';
import 'package:project_1_islami/UI/home/tabs/quran/sura_details1.dart';
import 'package:project_1_islami/UI/home/tabs/quran/sura_details2.dart';
import 'package:project_1_islami/UI/home/tabs/time/azkar_details.dart';
import 'package:project_1_islami/UI/intro/intro_screen.dart';
import 'package:project_1_islami/providers/most_recently_provider.dart';
import 'package:project_1_islami/utils/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MostRecentlyProvider(),
    child: const MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroScreen.routeName,
      routes: {
        IntroScreen.routeName:(context)=>IntroScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        Options.routeName:(context)=>Options(),
        SuraDetails1.routeName:(context)=>SuraDetails1(),
        SuraDetails2.routeName:(context)=>SuraDetails2(),
        HadethDetail.routeName:(context)=>HadethDetail(),
        AzkarDetails.routeName:(context)=>AzkarDetails()
      },
      darkTheme: AppTheme.darkTheme,
      themeMode:ThemeMode.dark,
    );
  }
}
