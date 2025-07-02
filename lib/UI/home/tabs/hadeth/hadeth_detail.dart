import 'package:flutter/material.dart';
import 'package:project_1_islami/models/hadeth.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class HadethDetail extends StatelessWidget {
  static const String routeName="hadeth-detail";
  const HadethDetail({super.key});

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)?.settings.arguments as Hadeth;
    var width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hadeth ${hadeth.hadethNumber}",
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
                    hadeth.title,
                    style: AppStyles.janna24Primary,
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(AppAssets.rightCorner)
                ],
              ),
            ),
            Expanded(
                child: hadeth==null
                    ? Center(
                        child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ))
                    : SingleChildScrollView(
                        child: Text(hadeth.content,style: AppStyles.janna20Primary,textAlign: TextAlign.center,))),
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