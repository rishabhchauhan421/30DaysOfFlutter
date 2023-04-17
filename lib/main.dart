import 'package:flutter/material.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/utils/routes.dart';
import 'package:frontend/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int days = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.LightTheme(context),
        initialRoute: MyRoutes.HOMEROUTE,
        debugShowCheckedModeBanner: false,
        routes: {
          MyRoutes.ROOTROUTE: (context) => HomePage(),
          MyRoutes.HOMEROUTE: (context) => HomePage(),
          MyRoutes.LOGINROUTE: (context) => LoginPage(),
        });
  }
}
