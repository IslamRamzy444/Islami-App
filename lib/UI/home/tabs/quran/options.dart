import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_reusable_widgets/sura_option.dart';
import 'package:project_1_islami/UI/home/tabs/quran/sura_details1.dart';
import 'package:project_1_islami/UI/home/tabs/quran/sura_details2.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class Options extends StatelessWidget {
  static const String routeName="options";
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    int mySuraIndex=ModalRoute.of(context)?.settings.arguments as int;
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.04*width,vertical: 0.02*height),
        width: double.infinity,
        height: double.infinity,
        color: AppColors.blackBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Choose The style of the sura verses you want to read",style: AppStyles.janna20Primary,),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, SuraDetails1.routeName,arguments: mySuraIndex);
              },
              child: SuraOption(title: "1-Separated in different lines")
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, SuraDetails2.routeName,arguments: mySuraIndex);
              },
              child: SuraOption(title: "2-Gathered")
            )
          ],
        ),
      ),
    );
  }
}