// ignore_for_file: prefer_const_constructors, missing_return, prefer_is_empty, prefer_contains, sort_child_properties_last

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:restaurant/pages/account/login.dart';

class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop()),
        ),
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                    child: Form(
                        child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 25, color: Colors.red),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Ad ve Soyad", border: InputBorder.none),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 1) {
                            return 'Bu alanın doldurulması zorunludur.';
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "E-Posta", border: InputBorder.none),
                        validator: (String value) {
                          if (value.isEmpty ||
                              value.indexOf(".") == -1 ||
                              value.indexOf("@") == -1) {
                            return 'Bu alanın doldurulması zorunludur.';
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Şifre", border: InputBorder.none),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 6) {
                            return 'Bu alanın doldurulması zorunludur.';
                          }
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Devam",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        margin: EdgeInsets.only(left: 100, right: 100),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ],
                ))),
              ],
            ),
          ),
        ));
  }
}
