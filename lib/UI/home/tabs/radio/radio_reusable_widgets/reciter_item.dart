import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class ReciterItem extends StatelessWidget {
  String title;
  ReciterItem({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      width: double.infinity,
      height: 0.15*height,
      margin: EdgeInsets.symmetric(horizontal: 0.05*width),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(0.03*width)
      ),
      child: Column(
        children: [
          Text(title,style: AppStyles.janna20Black,),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 0.1*height,
                child: Image.asset(AppAssets.hadethBottomMosque,fit: BoxFit.fill,)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 0.08*width,
                  ),
                  IconButton(
                    onPressed: () {
                      
                    }, 
                    icon: Icon(Icons.play_arrow,color: AppColors.blackBackgroundColor,size: 0.093*width,)
                  ),
                  IconButton(
                    onPressed: () {
                      
                    }, 
                    icon: Icon(CupertinoIcons.volume_up,color: AppColors.blackBackgroundColor,)
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}