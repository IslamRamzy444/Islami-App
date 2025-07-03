import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/time/azkar_details.dart';
import 'package:project_1_islami/UI/home/tabs/time/time_azkar_resources.dart';
import 'package:project_1_islami/UI/home/tabs/time/time_reusable_widget/azkar_card.dart';
import 'package:project_1_islami/UI/home/tabs/time/time_reusable_widget/prayer_card.dart';
import 'package:project_1_islami/data/prayers_data.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class TimeTab extends StatelessWidget {
  TimeTab({super.key});
  List<String> imageNames=[AppAssets.eveningAzkarImage,AppAssets.morningAzkarImage,AppAssets.wakingAzkarImage,AppAssets.sleepingAzkarImage];
  List<String> azkarTitles=["Evening Azkar","Morning Azkar","Waking Azkar","Sleeping Azkar"];
  List azkar=[TimeAzkarResources.eveningAzkar,TimeAzkarResources.morningAzkar,TimeAzkarResources.wakingAzkar,TimeAzkarResources.sleepingAzkar];
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05*width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
          Stack(
            children: [
              Container(
                height: 0.32*height,
                decoration: BoxDecoration(
                  color: AppColors.brownColor,
                  borderRadius: BorderRadius.circular(0.05*width)
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  child: Container(
                    height: 0.24*height,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(0.05*width)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 0.02*height,),
                        SizedBox(
                          height: 0.14*height,
                          child: ScrollConfiguration(
                            behavior: const MaterialScrollBehavior().copyWith(
                              dragDevices: {
                                PointerDeviceKind.touch,
                                PointerDeviceKind.mouse,
                              }
                            ),
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return PrayerCard(
                                  name: PrayersData.prayers[index].name, 
                                  time: PrayersData.prayers[index].time, 
                                  dayOrNight: PrayersData.prayers[index].amOrPm
                                );
                              }, 
                              separatorBuilder: (context, index) {
                                return SizedBox(width: 0.019*width,);
                              }, 
                              itemCount: PrayersData.prayers.length
                            ),
                          ),
                        ),
                        SizedBox(height: 0.01*height,),
                        Row(
                          children: [
                            SizedBox(width: 0.33*width,),
                            Text("Next Pray -",style: AppStyles.janna16Black75,),
                            Text("02:32",style: AppStyles.janna16Black,),
                            SizedBox(width: 0.1*width,),
                            ImageIcon(AssetImage(AppAssets.prayerImage))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0.265*width,
                child: Container(
                  width: 0.39*width,
                  height: 0.097*height,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(0.05*width),topRight: Radius.circular(0.05*width))
                  ),
                  child: Column(
                    children: [
                      Text("Pray Time",style: AppStyles.janna20BrownyBlack,),
                      Text("Tuesday",style: AppStyles.janna20DarkBrownyBlack,)
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0.06*width,
                top: 0.01*height,
                child: Column(
                  children: [
                    Text("16 Jul,",style: AppStyles.janna16White,),
                    Text("2024",style: AppStyles.janna16White,)
                  ],
                ),
              ),
              Positioned(
                right: 0.06*width,
                top: 0.01*height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("09 Muh,",style: AppStyles.janna16White,),
                    Text("1446",style: AppStyles.janna16White,)
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 0.02*height,),
          Text("Azkar",style: AppStyles.janna16White,),
          SizedBox(height: 0.02*height,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 0.02*height),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.02*height,
                  crossAxisSpacing: 0.01*width,
                  childAspectRatio: 0.95
                ), 
                itemCount: imageNames.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AzkarDetails.routeName,arguments: azkar[index]);
                    },
                    child: AzkarCard(
                      azkarImageName: imageNames[index], 
                      azkarName: azkarTitles[index]
                    ),
                  );
                },
              ),
            )
          )
        ]
      ),
    );
  }
}