import 'package:flutter/material.dart';
import 'package:lbdaap/base/export_all.dart';
import 'package:lbdaap/screens/loginscreen.dart';
import 'package:lbdaap/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.routeName: (context) => LoginPage(),
    HomePage.routeName: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Parastatal Kenya',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorConstant.lightBlueA200,
        accentColor: ColorConstant.bluegray401,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
