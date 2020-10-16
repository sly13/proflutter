import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints.expand(height: double.maxFinite),
      child: Image.asset('assets/images/bali.jpg', fit: BoxFit.cover),
    );
  }
}
