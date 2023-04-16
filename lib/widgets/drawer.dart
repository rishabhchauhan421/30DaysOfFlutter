import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final imageUrl =
      'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            currentAccountPicture:
                CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            accountName: Text("Rishabh Chauhan"),
            accountEmail: Text("mail@rishabh.com"),
          ),
        ),
        ListTile(
            leading: Icon(
              CupertinoIcons.home,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            )),
        ListTile(
            leading: Icon(
              CupertinoIcons.person,
            ),
            title: Text(
              "My Account",
              textScaleFactor: 1.2,
            )),
        ListTile(
            leading: Icon(
              CupertinoIcons.mail,
            ),
            title: Text(
              "Email Me",
              textScaleFactor: 1.2,
            ))
      ]),
    );
  }
}
