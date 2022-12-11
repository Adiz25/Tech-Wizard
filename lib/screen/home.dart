import 'package:flutter/material.dart';
import 'package:wayne/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final String name = "Aditya";

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('You are Loged in..'),
        action: SnackBarAction(
            label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tech Wizard"),
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
