// ignore_for_file: prefer_const_constructors, unnecessary_new, sort_child_properties_last

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/pages/shopping/shopping.dart';

class ProductDetail extends StatefulWidget {
  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Widget HeaderBuild() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1))
                ],
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Expanded(child: Text("")),
          //================
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100],
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1))
                ],
                borderRadius: BorderRadius.circular(15)),
            child: IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Shopping()));
              },
            ),
          )
        ],
      ),
    );
  }

  Widget imageProduct() {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[200],
                  spreadRadius: 1,
                  blurRadius: 0,
                  offset: Offset(0, 1))
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("images/product/pro1.jpg"),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            spreadRadius: 1,
                            blurRadius: 0,
                            offset: Offset(0, 1))
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    // ignore: prefer_const_constructors
                    icon: FaIcon(
                      FontAwesomeIcons.minus,
                      color: Colors.white,
                      size: 10,
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                //================
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100],
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1))
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                      size: 10,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            ListView(
              children: [
                imageProduct(),
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 25, right: 25, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: new Text(
                          "balik",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      new Row(
                        children: [
                          new Icon(
                            Icons.favorite,
                            color: Colors.orange,
                          ),
                          Padding(padding: EdgeInsets.only(right: 5)),
                          new Text("5"),
                          new Expanded(child: Text("")),
                          new Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Padding(padding: EdgeInsets.only(right: 5)),
                          new Text("5 review")
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 15)),
                      new Text(
                        "balik balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik  balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik balik ",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              child: HeaderBuild(),
            )
          ],

          //==============
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          children: [
            new Text(
              "40 tl",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(child: Text("")),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(40)),
              //margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Text(
                "Sepete Ekle",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )
          ],
        ),
        padding: EdgeInsets.only(left: 30, right: 30),
        height: 60,
        decoration: BoxDecoration(
            color: Colors.red,
            /*gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.red[300],
                  Colors.red[200],
                  Colors.red
                ]),*/
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[100],
                  spreadRadius: 7,
                  blurRadius: 4,
                  offset: Offset(0, 3))
            ],
            borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
