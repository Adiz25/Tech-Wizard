import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wayne/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _fromKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_fromKey.currentState!.validate()) {
      setState(() {
        _showToast(context);
        changeButton = true;
      });
      await Future.delayed(Duration(milliseconds: 1400));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

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
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _fromKey,
            child: Column(
              children: [
                Image.asset("assets/images/login.png"),
                // SvgPicture.asset(
                //   "assets/images/login.svg",
                //   alignment: const Alignment(0, -0.7),
                // ),
                SizedBox(height: 20),
                Text(
                  "Welcome $name",
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username must not Empty!";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Paasword", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password must not Empty!";
                          } else if (value.length < 6) {
                            return "Password lenght should be atleast 6";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 40),
                      InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 72, 92, 221),
                              // shape: changeButton
                              //     ? BoxShape.circle
                              //     : BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8)),
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 17,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
