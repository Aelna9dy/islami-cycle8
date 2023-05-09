import 'package:flutter/material.dart';

class HadethTitleWidget extends StatelessWidget {
  String title;

  HadethTitleWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }
}
