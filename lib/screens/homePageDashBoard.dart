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
        title: Text("Parastatal KE"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      drawer: _GloblaDrawer(),
      body: SingleChildScrollView(),
    );
  }

  Widget _GloblaDrawer() {
    return GlobalDrawer();
  }
}
