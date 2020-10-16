import 'package:flutter/material.dart';
import 'package:lessons/widgets/aboutIsland.dart';
import 'package:lessons/widgets/backgroundImage.dart';
import 'package:lessons/widgets/heartIcon.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // alignment: Alignment(1, 1),
      children: <Widget>[
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}
