import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Color(0xff222527),
      ),
      body: Center(
        child: Container(
          child: Text("Login Page"),
        ),
      ),
    );
  }
}
