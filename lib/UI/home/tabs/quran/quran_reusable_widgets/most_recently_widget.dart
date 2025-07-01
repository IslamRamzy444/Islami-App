import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_resources.dart';
import 'package:project_1_islami/providers/most_recently_provider.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';
import 'package:provider/provider.dart';

class MostRecentlyWidget extends StatefulWidget {
  const MostRecentlyWidget({super.key});

  @override
  State<MostRecentlyWidget> createState() => _MostRecentlyWidgetState();
}

class _MostRecentlyWidgetState extends State<MostRecentlyWidget> {
  late MostRecentlyProvider mostRecentlyProvider;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      mostRecentlyProvider.getMostRecentlySuraList();
    },);
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    mostRecentlyProvider=Provider.of<MostRecentlyProvider>(context);
    return Visibility(
      visible: mostRecentlyProvider.mostRecentlySuraList.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Most Recently",style: AppStyles.janna16SecondaryWhite,),
            SizedBox(height: 0.01*height,),
            SizedBox(
              height: 0.17*height,
              width: double.infinity,
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
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.02*width,vertical: 0.009*height),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(0.046*width),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(QuranResources.englishSuraList[mostRecentlyProvider.mostRecentlySuraList[index]],style: AppStyles.janna24Black,),
                              Text(QuranResources.arabicQuranList[mostRecentlyProvider.mostRecentlySuraList[index]],style: AppStyles.janna24Black,),
                              Text("${QuranResources.numberOfVersesList[mostRecentlyProvider.mostRecentlySuraList[index]]} Verses",style: AppStyles.janna14Black,)
                            ],
                          ),
                          Image.asset(AppAssets.mostRecentlyImage,fit: BoxFit.fill,)
                        ],
                      ),
                    );
                  }, 
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 0.02*width,
                    );
                  }, 
                  itemCount: mostRecentlyProvider.mostRecentlySuraList.length
                ),
              ),
            )
        ],
      ),
    );
  }
}