import 'package:flutter/material.dart';
import 'package:wayne/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String name = "Aditya";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tech Wizard"),
        backgroundColor: Color(0xff222527),
      ),
      body: Center(
        child: Container(
          child: Text("Hello $name!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
