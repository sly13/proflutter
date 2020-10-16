import 'package:flutter/material.dart';
import 'package:lessons/widgets/aboutIsland.dart';
import 'package:lessons/widgets/backgroundImage.dart';
import 'package:lessons/widgets/heartIcon.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}
