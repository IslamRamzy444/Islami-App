import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int selected=0;
  int counter=0;
  double rotationAngle=0;
  List<String> azkarTasabeeh=["سُبْحَانَ الْلَّهِ","الْحَمْدُ لِلَّهِ","الْلَّهُ أَكْبَرُ","لَا إِلَهَ إِلَّا الْلَّهُ"];
  Image sebhaImage=Image.asset(AppAssets.sebha,fit: BoxFit.fill,);
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى ",style: AppStyles.janna36White,),
        SizedBox(height: 0.02*height,),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 0.88*width,
              height: 0.6*height,
              child: InkWell(
                onTap: () {
                  rotateSebha();
                  counter++;
                  if(counter>33){
                    counter=0;
                    selected++;
                  }
                  if(selected>azkarTasabeeh.length-1){
                    selected=0;
                  }
                  setState(() {
                    
                  });
                },
                child: Transform.rotate(
                  angle: rotationAngle,
                  child: sebhaImage
                ),
              )
            ),
            Positioned(
              top: 0.3*height,
              child: Column(
                children: [
                  Text(azkarTasabeeh[selected],style: AppStyles.janna36White,),
                  SizedBox(height: 0.01*height,),
                  Text("$counter",style: AppStyles.janna36White,)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
  void rotateSebha(){
    setState(() {
      rotationAngle+=6*pi/180;
    });
  }
}