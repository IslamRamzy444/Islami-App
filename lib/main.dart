import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/home_screen.dart';
import 'package:project_1_islami/UI/intro/intro_screen.dart';
import 'package:project_1_islami/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
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
      },
      darkTheme: AppTheme.darkTheme,
      themeMode:ThemeMode.dark,
    );
  }
}
