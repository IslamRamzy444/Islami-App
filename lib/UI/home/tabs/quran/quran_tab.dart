import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/quran/options.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_resources.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_reusable_widgets/most_recently_widget.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_reusable_widgets/sura_item.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';
import 'package:project_1_islami/utils/shared_prefs.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<int> filterList=List.generate(114, (index) => index,);
  late double width;
  late double height;
  @override
  Widget build(BuildContext context) {
    width=MediaQuery.sizeOf(context).width;
    height=MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.all(0.05*width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (text) {
              searchSuraByUserText(text);
            },
            style: AppStyles.janna16SecondaryWhite,
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(
              enabledBorder: myBorderDecoration(),
              focusedBorder: myBorderDecoration(),
              prefixIcon: ImageIcon(AssetImage(AppAssets.searchIcon),color: AppColors.primaryColor,),
              hintText:"Sura Name",
              hintStyle: AppStyles.janna16SecondaryWhite
            ),
          ),
          SizedBox(height: 0.03*height,),
          MostRecentlyWidget(),
          SizedBox(height: 0.01*height,),
          Text("Suras List",style: AppStyles.janna16SecondaryWhite,),
          SizedBox(height: 0.01*height,),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    saveNewSuraList(filterList[index]);
                    Navigator.pushNamed(context, Options.routeName,arguments: filterList[index]);
                  },
                  child: SuraItem(suraIndex: filterList[index],)
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  thickness: 2,
                  color:AppColors.whiteColor,
                  indent: 0.1*width,
                  endIndent: 0.1*width,
                );
              }, 
              itemCount: filterList.length
            )
          )
        ],
      ),
    );
  }

  OutlineInputBorder myBorderDecoration(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(0.017*height),
      borderSide: BorderSide(color: AppColors.primaryColor,width: 2)
    );
  }
  void searchSuraByUserText(String userText){
    List<int> searchedList=[];
    for (int i = 0; i < QuranResources.arabicQuranList.length; i++) {
      if(QuranResources.englishSuraList[i].toUpperCase().contains(userText.toUpperCase())){
        searchedList.add(i);
      }
      if(QuranResources.arabicQuranList[i].contains(userText)){
        searchedList.add(i);
      }
    }
    filterList=searchedList;
    setState(() {
      
    });
    if(userText.isEmpty){
      searchedList.clear();
      filterList=List.generate(114, (index) => index,);
      setState(() {
        
      });
    }
  }
}