import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final String imgurl =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3kjtHRCEQ73M-pzVkBDPp8T1aNjkVwpW0lA&usqp=CAU";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Usama Nasir"),
                accountEmail: Text("Usamanasir786999@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text("Profile"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text("Email me"),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.trash),
            title: Text("Trash"),
          ),
        ],
      ),
    );
  }
}
