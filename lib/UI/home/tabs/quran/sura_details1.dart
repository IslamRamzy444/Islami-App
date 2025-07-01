import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_resources.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_reusable_widgets/sura_verse.dart';
import 'package:project_1_islami/providers/most_recently_provider.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';
import 'package:provider/provider.dart';

class SuraDetails1 extends StatefulWidget {
  static const String routeName = "details-1";
  const SuraDetails1({super.key});

  @override
  State<SuraDetails1> createState() => _SuraDetails1State();
}

class _SuraDetails1State extends State<SuraDetails1> {
  late MostRecentlyProvider mostRecentlyProvider;
  List<String> suraVerses = [];
  int higlight = 0;
  @override
  void dispose() {
    // TODO: implement dispose
    mostRecentlyProvider.getMostRecentlySuraList();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    int indexOfSura = ModalRoute.of(context)?.settings.arguments as int;
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    mostRecentlyProvider=Provider.of<MostRecentlyProvider>(context);
    if (suraVerses.isEmpty) {
      loadSuraContent(indexOfSura);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          QuranResources.englishSuraList[indexOfSura],
          style: AppStyles.janna20Primary,
        ),
      ),
      body: Container(
        color: AppColors.blackBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.04 * width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.leftCorner),
                  Text(
                    QuranResources.arabicQuranList[indexOfSura],
                    style: AppStyles.janna24Primary,
                  ),
                  Image.asset(AppAssets.rightCorner)
                ],
              ),
            ),
            Expanded(
                child: suraVerses.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ))
                    : ListView.separated(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              higlight = index;
                              setState(() {});
                            },
                            child: index == higlight
                                ? SuraVerse(
                                    index: index,
                                    verseContent: suraVerses[index],
                                    containerColor: AppColors.primaryColor,
                                    verseStyle: AppStyles.janna20Black)
                                : SuraVerse(
                                    index: index,
                                    verseContent: suraVerses[index],
                                    containerColor:
                                        AppColors.blackBackgroundColor,
                                    verseStyle: AppStyles.janna20Primary,
                                  ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 0.009 * height,
                          );
                        },
                        itemCount: suraVerses.length)),
            Image.asset(
              AppAssets.bottomMosque,
              fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }

  void loadSuraContent(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = fileContent
        .split(RegExp(r'\r?\n'))
        .where((line) => line.trim().isNotEmpty)
        .toList();
    suraVerses = lines;
    Future.delayed(Duration(seconds: 1), () {
      setState(() {});
    });
  }
}
