import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/time/time_reusable_widget/zekr_item.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class AzkarDetails extends StatelessWidget {
  static const String routeName="azkar-details";
  const AzkarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List myAzkarList=ModalRoute.of(context)?.settings.arguments as List;
    String title=myAzkarList[0]["category"];
    var width = MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: AppStyles.janna20Primary,
        ),
      ),
      body: Container(
        color: AppColors.blackBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.04 * width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.leftCorner),
                  Text(
                    title,
                    style: AppStyles.janna24Primary,
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(AppAssets.rightCorner)
                ],
              ),
            ),
            Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ZekrItem(index: index+1, 
                    count: myAzkarList[index]["count"], 
                    description: myAzkarList[index]["description"], 
                    content: myAzkarList[index]["content"]
                  );
                  }, 
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 0.02*height,);
                  }, 
                  itemCount: myAzkarList.length
                )
            ),
            Image.asset(
              AppAssets.bottomMosque,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}
