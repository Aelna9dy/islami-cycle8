import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/homeScreen/hadeth/hadeth_data_class.dart';
import 'package:islami/homeScreen/hadeth/hadeth_details.dart';
import 'package:islami/homeScreen/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethDataClass> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) readHadethFiles();
    return Column(
      children: [
        Image(image: AssetImage("assets/images/basmala.png")),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Divider(
                color: Theme.of(context).accentColor,
                thickness: 1.5,
              ),
            ),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetails.routName,
                    arguments: allHadeth[index]);
              },
              child: HadethTitleWidget(
                allHadeth[index].title,
              ),
            ),
            itemCount: allHadeth.length,
          ),
        ),
      ],
    );
  }

  void readHadethFiles() async {
    List<HadethDataClass> list = [];
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethContent = content.split("#");

    for (int i = 0; i < allHadethContent.length; i++) {
      List<String> singleHadethLines = allHadethContent[i].trim().split("\n");
      String title = singleHadethLines[0];
      singleHadethLines.removeAt(0);
      String content = singleHadethLines.join("\n");
      String singleHadethContent = allHadethContent[i].trim();
      int indexOfFirstLine = singleHadethContent.indexOf("\n");
      // String title = singleHadethContent.substring(0, indexOfFirstLine);
      // String contenr = singleHadethContent.substring(indexOfFirstLine+1);

      HadethDataClass hadeth = HadethDataClass(title, content);
      list.add(hadeth);
    }
    allHadeth = list;
    setState(() {});
  }
}
