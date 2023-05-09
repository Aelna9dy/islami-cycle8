import 'package:flutter/material.dart';
import 'package:islami/homeScreen/provider/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: const EdgeInsets.all(12),
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.light);
            },
            child: settingsProvider.isDark()
                ? getUnselectedItems("Light")
                : getSelectedItems("Light"),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.dark);
            },
            child: settingsProvider.isDark()
                ? getSelectedItems("Dark")
                : getUnselectedItems("Dark"),
          ),
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
