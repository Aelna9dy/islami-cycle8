import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/homeScreen/provider/settings_provider.dart';
import 'package:islami/homeScreen/quran/sura_detials_screen_args.dart';
import 'package:islami/homeScreen/quran/verses_widget.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = "sura-details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    SuraDetailsScreenArs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsScreenArs;

    if (verses.isEmpty) readFile(args.index + 1);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(settingsProvider.getMainBackground()),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "Islami",
          ),
          centerTitle: true,
        ),
        body: verses.isEmpty
            ? Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
        )
            : Card(
          margin:
          const EdgeInsets.symmetric(vertical: 65, horizontal: 30),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)),
          child: ListView.builder(
            itemBuilder: (context, index) =>
                VersesWidget(verses[index], index + 1),
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  void readFile(int fileIndex) async {
    String fileContact =
        await rootBundle.loadString("assets/files/$fileIndex.txt");
    List<String> lines = fileContact.trim().split('\n');

    print(lines.length);
    setState(() {
      verses = lines;
    });
  }
}
