import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class SuraOption extends StatelessWidget {
  final String title;
  const SuraOption({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 0.05 * width, vertical: 0.02 * height),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(0.04 * width)),
      child: Text(
        title,
        style: AppStyles.janna24Black,
      ),
    );
  }
}
