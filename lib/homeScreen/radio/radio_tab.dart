import 'dart:math';

import 'package:flutter/material.dart';

class RadioTab extends StatefulWidget {
  static const String routName = "radio_tab";

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  bool videoPlaying = false;

  void iconTapped() {
    if (videoPlaying == false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 150),
          child: const Image(
            image: AssetImage(
              "assets/images/radio.png",
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          "اذاعة القران الكريم",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: 180 * pi / 180,
              child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  const AssetImage(
                    "assets/images/Ic_metro_next.png",
                  ),
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            GestureDetector(
              onTap: () {
                iconTapped();
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                color: Theme.of(context).accentColor,
                size: 50,
                progress: _animationController,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                const AssetImage(
                  "assets/images/Ic_metro_next.png",
                ),
                color: Theme.of(context).accentColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}