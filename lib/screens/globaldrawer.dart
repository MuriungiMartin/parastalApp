// ignore_for_file: unused_import, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:lbdaap/base/export_all.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorConstant.whiteA70030,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: ColorConstant.orange40019,
            ),
            child: Image.asset(
              'assets/logo.png',
              width: 25,
              height: 25,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageDashBoard(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text("Profile"),
            textColor: ColorConstant.black900,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            textColor: ColorConstant.black900,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            textColor: ColorConstant.black900,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget SettingsPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: ColorConstant.orange400,
      ),
      body: Center(
        child: Text("Settings Page"),
      ),
    );
  }

  Widget ProfilePage() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: ColorConstant.orange400,
      ),
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
