import 'package:flutter/material.dart';
import 'package:frontend/home_page.dart';
import 'package:frontend/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int days = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
