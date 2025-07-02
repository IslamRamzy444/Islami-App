import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/hadeth/hadeth_reusable_widget/hadeth_item.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return CarouselSlider(
      options: CarouselOptions(
        height: 0.68*height,
        enlargeCenterPage: true,
        aspectRatio: 1.8
      ),
      items: List.generate(50,(index)=>index+1).map((index) {
        return HadethItem(index: index);
      }).toList(),
    );
  }
}
