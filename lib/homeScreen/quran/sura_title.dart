import 'package:flutter/material.dart';

import 'sura_details_screen.dart';
import 'sura_detials_screen_args.dart';

class SuraTitleWidget extends StatelessWidget {
  String title;
  int index;

  SuraTitleWidget({required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetailsScreen.routName,
          arguments: SuraDetailsScreenArs(
            title: title,
            index: index,
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
