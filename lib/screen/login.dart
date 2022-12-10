import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wayne/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          title: const Text("Login"),
          backgroundColor: const Color(0xff222527),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png"),
              // SvgPicture.asset(
              //   "assets/images/login.svg",
              //   alignment: const Alignment(0, -0.7),
              // ),
              SizedBox(height: 20),
              const Text(
                "Welcome To Tech Wizard",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Paasword", labelText: "Password"),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 72, 92, 221),
                        minimumSize: Size(150, 40),
                      ), // Background color
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
