import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class AzkarCard extends StatelessWidget {
  String azkarImageName;
  String azkarName;
  AzkarCard({super.key,required this.azkarImageName,required this.azkarName});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.blackBackgroundColor,
        borderRadius: BorderRadius.circular(0.04*width),
        border: Border.all(width: 2,color: AppColors.primaryColor)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(azkarImageName,width: double.infinity,height: 0.3*height,),
          Text(azkarName,style: AppStyles.janna20White,)
        ],
      ),
    );
  }
}