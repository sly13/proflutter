import 'package:flutter/material.dart';
import 'package:lessons/indexedStack.dart';
import 'package:lessons/positioned.dart';
import 'package:lessons/stack.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack & Positioned Widgets'),
        ),
        // body: Example(),
        // body: StackWidget(),
        // body: PositionedWidget(),
        body: IndexedStackWidget(),
      ),
    );
  }
}
