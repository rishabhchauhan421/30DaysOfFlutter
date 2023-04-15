import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(
              fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
