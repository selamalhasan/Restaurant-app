// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant/pages/config.dart';

class GetStart extends StatefulWidget {
  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(
        child: Column(
          children: [
            new Container(
              height: myheight * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("images/tip1.png"),
                      fit: BoxFit.contain)),
            ),
            new Container(
              height: myheight,
              decoration: BoxDecoration(
                  color: primeryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  Column(
                    children: [],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
