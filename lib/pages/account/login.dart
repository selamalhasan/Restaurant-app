// ignore_for_file: prefer_const_constructors, missing_return, prefer_is_empty, prefer_contains, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:restaurant/pages/account/forgetPassword.dart';
import 'package:restaurant/pages/account/register.dart';
import 'package:restaurant/pages/home/home.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          /*
          
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop()),*/
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
                        "Login",
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
                    /*Container(
                      margin: EdgeInsets.only(bottom: 30),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Telefon", border: InputBorder.none),
                        validator: (String value) {
                          if (value.isEmpty || value.length < 5) {
                            return 'Bu alanın doldurulması zorunludur.';
                          }
                        },
                      ),
                    ),*/
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Expanded(
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));
                            },
                            child: Text(
                              "Şifremi Hatırlat",
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Home()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Giriş Yap",
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
                Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hesabınız yoksa üye olmak için ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 100)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text(
                            "tıklayınız",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
