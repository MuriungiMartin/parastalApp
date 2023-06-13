// ignore_for_file: unused_import, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names, file_names
import 'package:flutter/material.dart';
import 'package:lbdaap/base/export_all.dart';

class HomePageDashBoard extends StatefulWidget {
  const HomePageDashBoard({Key? key}) : super(key: key);

  @override
  _HomePageDashBoardState createState() => _HomePageDashBoardState();
}

class _HomePageDashBoardState extends State<HomePageDashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.people_alt_outlined,
              color: ColorConstant.whiteA700,
              semanticLabel: 'Profile',
            ),
          )
        ],
        title: Text("Parastatal KE"),
        centerTitle: true,
        backgroundColor: ColorConstant.orange400,
        foregroundColor: ColorConstant.whiteA700,
        toolbarTextStyle: TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
      drawer: _GloblaDrawer(),
      body: ListView(
        children: [CommonHeader()],
      ),
    );
  }

  Widget _GloblaDrawer() {
    return GlobalDrawer();
  }
}
