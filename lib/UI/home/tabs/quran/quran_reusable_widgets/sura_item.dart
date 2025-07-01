import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_resources.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class SuraItem extends StatelessWidget {
  int suraIndex;
  SuraItem({super.key,required this.suraIndex});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.suraVector),
            Text(
              "${suraIndex+1}",
              style: AppStyles.janna20White,
            ),
          ],
        ),
        SizedBox(
          width: 0.06*width,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              QuranResources.englishSuraList[suraIndex],
              style: AppStyles.janna20White,
            ),
            Text(
              "${QuranResources.numberOfVersesList[suraIndex]} Verses",
              style: AppStyles.janna14White,
            )
          ],
        ),
        Spacer(),
        Text(
          QuranResources.arabicQuranList[suraIndex],
          style: AppStyles.janna14White,
        )
      ],
    );
  }
}
