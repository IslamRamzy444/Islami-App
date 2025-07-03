import 'package:flutter/material.dart';

class RadioOptionButton extends StatelessWidget {
  String title;
  Color bgColor;
  TextStyle titleStyle;
  RadioOptionButton({super.key,required this.title,required this.bgColor,required this.titleStyle});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.009*height),
      width: 0.43*width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(0.02*width)
      ),
      child: Text(title,style: titleStyle,),
    );
  }
}