// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart ';
import 'package:lbdaap/base/export_all.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for loading
    Timer(Duration(seconds: 2), () {
      // After the delay, navigate to the main page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
    });
  }

  Widget build(BuildContext context) {
    return ImageAnimationExample();
  }
}
