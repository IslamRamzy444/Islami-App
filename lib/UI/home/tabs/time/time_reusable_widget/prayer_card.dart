import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class PrayerCard extends StatelessWidget {
  String name;
  String time;
  String dayOrNight;
  PrayerCard({super.key,required this.name,required this.time,required this.dayOrNight});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      width: 0.22*width,
      padding: EdgeInsets.symmetric(horizontal: 0.02*width,vertical: 0.02*height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.05*width),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColors.blackBackgroundColor,AppColors.lightBrown
          ]
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name,style: AppStyles.janna12White,),
          Text(time,style: AppStyles.janna16White,),
          Text(dayOrNight,style: AppStyles.janna12White,)
        ],
      ),
    );
  }
}