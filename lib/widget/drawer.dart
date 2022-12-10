import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imgUrl =
        "https://github.com/Adiz25/ClassWork/blob/main/tie.png?raw=true";
    return Drawer(
      child: Container(
        color: Color.fromARGB(125, 111, 111, 111),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 184, 184, 184)),
                  accountName: Text("Aditya Pandya",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  accountEmail: Text("aditya@gmail.com",
                      style: TextStyle(color: Color.fromARGB(255, 63, 63, 63))),
                  currentAccountPicture: CircleAvatar(
                    foregroundImage: NetworkImage(imgUrl),
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Color.fromARGB(234, 27, 27, 27),
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(color: Color.fromARGB(234, 27, 27, 27)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Color.fromARGB(234, 27, 27, 27),
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(color: Color.fromARGB(234, 27, 27, 27)),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Color.fromARGB(234, 27, 27, 27),
              ),
              title: Text(
                "Contact us",
                textScaleFactor: 1.5,
                style: TextStyle(color: Color.fromARGB(234, 27, 27, 27)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
