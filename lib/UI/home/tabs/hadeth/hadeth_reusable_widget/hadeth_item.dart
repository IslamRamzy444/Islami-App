import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_1_islami/UI/home/tabs/hadeth/hadeth_detail.dart';
import 'package:project_1_islami/models/hadeth.dart';
import 'package:project_1_islami/utils/app_assets.dart';
import 'package:project_1_islami/utils/app_colors.dart';
import 'package:project_1_islami/utils/app_styles.dart';

class HadethItem extends StatefulWidget {
  int index;

  HadethItem({super.key, required this.index});

  @override
  State<HadethItem> createState() => _HadethItemState();
}

class _HadethItemState extends State<HadethItem> {
  Hadeth? hadeth;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadethContent(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.019*width,vertical: 0.013*height),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.05 * width),
          color: AppColors.primaryColor,
          image: DecorationImage(image: AssetImage(AppAssets.hadethDetailBg),)),
      child: hadeth == null
          ? Center(
              child: CircularProgressIndicator(
              color: AppColors.blackBackgroundColor,
            ))
          : Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAssets.hadethLeftCorner),
                  Expanded(child: Text(hadeth?.title??"",style: AppStyles.janna24Black,textAlign: TextAlign.center,),),
                  Image.asset(AppAssets.hadethRightCorner,)
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadethDetail.routeName,arguments: hadeth);
                    },
                    child: Text(hadeth?.content??"",style: AppStyles.janna16Black,textAlign: TextAlign.center,)
                  )
                ),
              ),
              Image.asset(AppAssets.hadethBottomMosque,fit: BoxFit.fill,)
            ],
          ),
    );
  }

  void loadHadethContent(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/files/hadeeth/h$index.txt");
    int indexOfFile = fileContent.indexOf("\n");
    String title = fileContent.substring(0, indexOfFile);
    String content = fileContent.substring(index + 1);
    hadeth = Hadeth(hadethNumber: index, title: title, content: content);
    Future.delayed(
      Duration(seconds: 1),
      () {
        setState(() {});
      },
    );
  }
}
