import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme=ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor:AppColors.blackBackgroundColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackBackgroundColor,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColors.primaryColor
      )
    )
  );
}