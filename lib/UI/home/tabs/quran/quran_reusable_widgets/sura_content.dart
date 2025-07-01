import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class SuraContent extends StatelessWidget {
  String content;
  SuraContent({super.key,required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: AppStyles.janna20Primary.copyWith(height: 2),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}