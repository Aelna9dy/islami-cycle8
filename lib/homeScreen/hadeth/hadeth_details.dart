import 'package:flutter/material.dart';
import 'package:islami/homeScreen/hadeth/hadeth_data_class.dart';
import 'package:islami/homeScreen/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routName = "hadeth_details";

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as HadethDataClass;
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 65, horizontal: 30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        thickness: 1.5,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Text(
                      args.content,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
