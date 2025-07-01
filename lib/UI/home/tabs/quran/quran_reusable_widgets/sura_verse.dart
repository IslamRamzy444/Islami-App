import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_colors.dart';

class SuraVerse extends StatelessWidget {
  int index;
  String verseContent;
  Color containerColor;
  TextStyle verseStyle;
  SuraVerse({super.key, required this.index, required this.verseContent,required this.containerColor,required this.verseStyle});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.04 * width),
      padding: EdgeInsets.symmetric(
          vertical: 0.02 * height, horizontal: 0.05 * width),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(0.03 * height),
          border: Border.all(color: AppColors.primaryColor, width: 2)),
      child: Text(
        "[${index + 1}]$verseContent",
        style: verseStyle,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
