import 'package:flutter/material.dart';

class Env{
static const String appName = 'LBDAAP';
static const String appVersion = '0.0.1';
static const String base_Url_Prefix = 'http://localhost:83/';
}
String Navusername = 'christopher';
String Navpassword = 'Password@123';

String greeting()
{
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning';
  }
  if (hour < 17) {
    return 'Good Afternoon';
  }
  return 'Good Evening';
}