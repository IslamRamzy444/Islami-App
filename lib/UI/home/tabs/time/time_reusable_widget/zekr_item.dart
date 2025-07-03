import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class ZekrItem extends StatelessWidget {
  int index;
  String count;
  String description;
  String content;
  ZekrItem({super.key,required this.index,required this.count,required this.description,required this.content});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.02*width),
      padding: EdgeInsets.symmetric(vertical: 0.02*height,horizontal: 0.03*width),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.04*width),
        border: Border.all(width: 2,color: AppColors.primaryColor)
      ),
      child: Column(
        children: [
          Text("[$index]",style: AppStyles.janna20Primary,),
          Text("الذكر رقم $index",style: AppStyles.janna20Primary,textDirection: TextDirection.rtl,),
          Text("عدد مرات الذكر: $count",style: AppStyles.janna20Primary,textDirection: TextDirection.rtl,),
          Text("الوصف: $description",style: AppStyles.janna20Primary,textDirection: TextDirection.rtl,),
          SizedBox(height: 0.03*height,),
          Text(content,style: AppStyles.janna20Primary,textDirection: TextDirection.rtl,)
        ],
      ),
    );
  }
}