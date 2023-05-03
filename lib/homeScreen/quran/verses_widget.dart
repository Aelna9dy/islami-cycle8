import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  String content;
  int index;

  VersesWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Text(
        "$content($index)",
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
