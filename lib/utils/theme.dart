import 'package:flutter/material.dart';

ThemeData basicTheme() => ThemeData(
      accentColor: Colors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueAccent,
        textTheme: ButtonTextTheme.accent,
      ),
    );
