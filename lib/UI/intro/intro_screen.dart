import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_1_islami/UI/home/home_screen.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';
class IntroScreen extends StatefulWidget {
  static const String routeName="introduction-screen";
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    var pagedececoration=PageDecoration(
      imageFlex: 2
    );
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: AppColors.blackBackgroundColor,
        showBackButton: true,
        next: Text("Next",style: AppStyles.janna16Primary,),
        back: Text("Back",style: AppStyles.janna16Primary,),
        done: Text("Finish",style: AppStyles.janna16Primary,),
        onDone: () {
          Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
        },
        dotsDecorator: DotsDecorator(
          size: Size.square(width*0.02),
          activeSize: Size(width*0.04, width*0.02),
          color: AppColors.dotsGreyColor,
          activeColor: AppColors.dotsActiveColor,
          spacing: EdgeInsets.symmetric(horizontal: width*0.007),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27)
          )
        ),
        pages: [
          PageViewModel(
            image: SizedBox(
              width: width*0.4,
              height: 0.6*height,
              child: Image.asset(AppAssets.introImage1,fit: BoxFit.cover,)
            ),
            titleWidget: Text("Welcome To Islami App",style: AppStyles.janna24Primary,),
            body: "",
            decoration: pagedececoration.copyWith(
              imageFlex: 6
            )
          ),
          PageViewModel(
            image: SizedBox(
              width: width*0.4,
              height: 0.6*height,
              child: Image.asset(AppAssets.introImage2,fit: BoxFit.cover,)
            ),
            titleWidget: Text("Welcome To Islami",style: AppStyles.janna24Primary,),
            bodyWidget: Column(
              children: [
                Text("We Are Very Excited To Have You In Our",style: AppStyles.janna20Primary,),
                Text("Community",style: AppStyles.janna20Primary,),
              ],
            ),
            decoration: pagedececoration
          ),
          PageViewModel(
            image: SizedBox(
              width: width*0.4,
              height: 0.6*height,
              child: Image.asset(AppAssets.introImage3,fit: BoxFit.cover,)
            ),
            titleWidget: Text("Reading the Quran",style: AppStyles.janna24Primary,),
            bodyWidget: Text("Read, and your Lord is the Most Generous",style: AppStyles.janna20Primary,),
            decoration: pagedececoration.copyWith(
              imageFlex: 3
            )
          ),
          PageViewModel(
            image: SizedBox(
              width: width*0.4,
              height: 0.6*height,
              child: Image.asset(AppAssets.introImage4,fit: BoxFit.cover,)
            ),
            titleWidget: Text("Bearish",style: AppStyles.janna24Primary,),
            bodyWidget: Column(
              children: [
                Text("Praise the name of your Lord, the Most",style: AppStyles.janna20Primary,),
                Text("High",style: AppStyles.janna20Primary,),
              ],
            ),
            decoration: pagedececoration
          ),
          PageViewModel(
            image: SizedBox(
              width: width*0.4,
              height: 0.6*height,
              child: Image.asset(AppAssets.introImage5,fit: BoxFit.cover,)
            ),
            titleWidget: Text("Holy Quran Radio",style: AppStyles.janna24Primary,),
            bodyWidget: Column(
              children: [
                Text("You can listen to the Holy Quran Radio",style: AppStyles.janna20Primary,),
                Text("through the application for free and easily",style: AppStyles.janna20Primary,),
              ],
            ),
            decoration: pagedececoration
          ),
        ],
      ),
    );
  }
}