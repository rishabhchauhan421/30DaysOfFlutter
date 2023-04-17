import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) {
    return ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black)));
  }
}
