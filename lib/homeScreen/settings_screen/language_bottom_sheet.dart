import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItems("English"),
          const SizedBox(
            height: 15,
          ),
          getUnselectedItems("عربي"),
        ],
      ),
    );
  }

  Widget getSelectedItems(String title) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white10, borderRadius: BorderRadius.circular(12.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).accentColor,
                ),
          ),
          const Icon(
            Icons.check,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget getUnselectedItems(String title) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
