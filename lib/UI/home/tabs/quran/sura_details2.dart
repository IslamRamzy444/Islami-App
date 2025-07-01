import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_resources.dart';
import 'package:project_1_islami/UI/home/tabs/quran/quran_reusable_widgets/sura_content.dart';
import 'package:project_1_islami/providers/most_recently_provider.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';
import 'package:provider/provider.dart';

class SuraDetails2 extends StatefulWidget {
  static const String routeName = "details-2";
  const SuraDetails2({super.key});

  @override
  State<SuraDetails2> createState() => _SuraDetails2State();
}

class _SuraDetails2State extends State<SuraDetails2> {
  late MostRecentlyProvider mostRecentlyProvider;
  String suraContent = "";
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
    mostRecentlyProvider=Provider.of<MostRecentlyProvider>(context);
    if (suraContent.isEmpty) {
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
                child: suraContent.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ))
                    : SingleChildScrollView(
                        child: SuraContent(content: suraContent))),
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
    for (int i = 0; i < lines.length; i++) {
      lines[i] += " [${i + 1}]";
      lines[i].trim();
    }

    suraContent = lines.join('');
    Future.delayed(Duration(seconds: 1), () {
      setState(() {});
    });
  }
}
