import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/hadeth/hadeth_tab.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_tab.dart';
import 'package:project_1_islami/UI/home/tabs/radio/radio_tab.dart';
import 'package:project_1_islami/UI/home/tabs/sebha/sebha_tab.dart';
import 'package:project_1_islami/UI/home/tabs/time/time_tab.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex=0;
  late double width;
  late double height;
  List<String> bgImages=[
    AppAssets.quranBg,AppAssets.hadethBg,AppAssets.sebhaBg,AppAssets.radioBg,AppAssets.timeBg
  ];
  List<Widget> tabs=[
    QuranTab(),HadethTab(),SebhaTab(),RadioTab(),TimeTab()
  ];
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Image.asset(bgImages[activeIndex],width: double.infinity,height:double.infinity,fit: BoxFit.fill,),
        Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(AppAssets.islamiLogoHeader,width: 0.68*width,height: 0.18*height,),
              Expanded(
                child: tabs[activeIndex]
              )
            ],
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColors.primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: activeIndex,
              onTap: (index) {
                activeIndex=index;
                setState(() {
                  
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon:buildMyIcon(index: 0, imageName: AppAssets.quranIcon),
                  label: "Quran"
                ),
                BottomNavigationBarItem(
                  icon: buildMyIcon(index: 1, imageName: AppAssets.hadethIcon),
                  label: "Hadeth"
                ),
                BottomNavigationBarItem(
                  icon: buildMyIcon(index: 2, imageName: AppAssets.sebhaIcon),
                  label: "Sebha"
                ),
                BottomNavigationBarItem(
                  icon: buildMyIcon(index: 3, imageName: AppAssets.radioIcon),
                  label: "Radio"
                ),
                BottomNavigationBarItem(
                  icon: buildMyIcon(index: 4, imageName: AppAssets.timeIcon),
                  label: "Time"
                ),
              ]
            ),
          ),
        )
      ],
    );
  }
  Widget buildMyIcon({required int index,required String imageName}){
    return activeIndex==index? Container(
      padding: EdgeInsets.symmetric(vertical: 0.006*height,horizontal:0.046*width),
      decoration: BoxDecoration(
        color: AppColors.shadedBlack,
        borderRadius: BorderRadius.circular(0.16*width)
        ),
        child: ImageIcon(AssetImage(imageName))
      ):ImageIcon(AssetImage(imageName));
  }
}