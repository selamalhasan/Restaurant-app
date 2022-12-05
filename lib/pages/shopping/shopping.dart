// ignore_for_file: prefer_const_constructors, unnecessary_new, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/pages/home/home.dart';
import 'package:restaurant/pages/order/tracking.dart';

class Shopping extends StatefulWidget {
  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
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
        ],
      ),
    );
  }

  var myPro = [
    {
      "pro_id": "1",
      "pro_name": "balik",
      "pro_price": "100",
      "pro_image": "images/category/cat1.png",
      "pro_qty": "3"
    },
    {
      "pro_id": "1",
      "pro_name": "balik",
      "pro_price": "100",
      "pro_image": "images/category/cat1.png",
      "pro_qty": "3"
    },
    {
      "pro_id": "1",
      "pro_name": "balik",
      "pro_price": "100",
      "pro_image": "images/category/cat1.png",
      "pro_qty": "3"
    },
    {
      "pro_id": "1",
      "pro_name": "balik",
      "pro_price": "100",
      "pro_image": "images/category/cat1.png",
      "pro_qty": "3"
    },
  ];

  void _showSheetMessage(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: new Icon(Icons.done,
                            color: Colors.green, size: 65)),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: new Text(
                        "Siparişiniz Alındı",
                        style: TextStyle(color: Colors.green, fontSize: 25),
                      ),
                    ),
                    new Text(
                      "Siparişiniz için teşekkür ederiz",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    new Text(
                      "Siparişiniz takip için aşağıda tıklayın",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                      ),
                      child: MaterialButton(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 15,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Devam",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => new Tracking()));
                        },
                      ),
                    ),
                    MaterialButton(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Ana Sayfa",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Home()));
                      },
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ListView.builder(
                itemCount: myPro.length,
                itemBuilder: ((context, index) {
                  return SinglePruduct(
                    pro_id: myPro[index]["pro_id"],
                    pro_name: myPro[index]["pro_name"],
                    pro_image: myPro[index]["pro_image"],
                    pro_qty: myPro[index]["pro_qty"],
                    pro_price: myPro[index]["pro_price"],
                  );
                }),
              ),
            ),
            Positioned(
              child: HeaderBuild(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 140,
        child: Column(
          children: [
            Card(
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Row(children: [
                      new Text("Toplam tutar:"),
                      new Expanded(child: Text("")),
                      new Text("100")
                    ]),
                    Divider(
                      color: Colors.grey[1000],
                    ),
                    Row(children: [
                      new Text("Delivery:"),
                      new Expanded(child: Text("")),
                      new Text("5")
                    ]),
                    Divider(
                      color: Colors.grey[200],
                    ),
                    Row(children: [
                      new Text("Toplam:"),
                      new Expanded(child: Text("")),
                      new Text("105")
                    ]),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  _showSheetMessage(context);
                },
                child: Text(
                  "Devam",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(40)),
            ),
          ],
        ),
      ),
    );
  }
}

class SinglePruduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_qty;
  final String pro_image;

  SinglePruduct(
      {this.pro_id,
      this.pro_name,
      this.pro_price,
      this.pro_qty,
      this.pro_image});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.delete,
                color: Colors.red,
              )),
          Container(
            child: ListTile(
              title: Text(
                pro_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(pro_price),
              leading: Container(
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(pro_image), fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
              trailing: Container(
                width: 70,
                child: Row(
                  children: [
                    GestureDetector(
                        child: Container(
                      padding: EdgeInsets.all(5),
                      child: FaIcon(
                        FontAwesomeIcons.minus,
                        color: Colors.white,
                        size: 15,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                    )),
                    Expanded(
                        child: new Text(
                      pro_qty,
                      style: TextStyle(fontSize: 19),
                      textAlign: TextAlign.center,
                    )),
                    GestureDetector(
                        child: Container(
                      padding: EdgeInsets.all(5),
                      child: FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                        size: 15,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
