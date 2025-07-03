import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/radio/radio_reusable_widgets/radio_item.dart';
import 'package:project_1_islami/UI/home/tabs/radio/radio_reusable_widgets/radio_option_button.dart';
import 'package:project_1_islami/UI/home/tabs/radio/radio_reusable_widgets/reciter_item.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                if(selectedIndex!=0){
                  setState(() {
                    selectedIndex=0;
                  });
                }
              },
              child: RadioOptionButton(
                title: "Radio",
                bgColor: selectedIndex==0?AppColors.primaryColor:AppColors.blackBackgroundColor,
                titleStyle: selectedIndex==0?AppStyles.janna16Black:AppStyles.janna16White,
              )
            ),
            InkWell(
              onTap: () {
                if(selectedIndex!=1){
                  setState(() {
                    selectedIndex=1;
                  });
                }
              },
              child: RadioOptionButton(
                title: "Reciters",
                bgColor: selectedIndex==1?AppColors.primaryColor:AppColors.blackBackgroundColor,
                titleStyle: selectedIndex==1?AppStyles.janna16Black:AppStyles.janna16White,
              )
            )
          ],
        ),
        SizedBox(height: 0.017*height,),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return selectedIndex==0?RadioItem(title: "Ibrahim Al-Akdar"):ReciterItem(title: "Ibrahim Al-Akdar");
            }, 
            separatorBuilder: (context, index) {
              return SizedBox(height: 0.009*height,);
            }, 
            itemCount: 4
          )
        )
      ],
    );
  }
}