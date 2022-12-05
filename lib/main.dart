// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant/pages/account/login.dart';
import 'package:restaurant/pages/account/register.dart';
import 'package:restaurant/pages/tips/getStart.dart';
import 'package:restaurant/pages/tips/tips.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:restaurant/pages/config.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new Login(),
      title: new Text(
        'Hoş Geldiniz :)',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
      ),
      backgroundColor: primeryColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100,
      loaderColor: Colors.white,
    );
  }
}
