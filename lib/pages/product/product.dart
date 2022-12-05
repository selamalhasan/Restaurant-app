// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant/pages/product/product_detail.dart';

class Product extends StatefulWidget {
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var myArr_product = [
    {
      "pro_id": "1",
      "pro_name": "pizza",
      "pro_desc": "this is desc",
      "pro_image": "images/product/pro1.jpg",
      "pro_offer": "1",
    },
    {
      "pro_id": "2",
      "pro_name": "pizza2",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro2.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg",
      "pro_offer": "0",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Balik",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: myArr_product.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleProduct(
              pro_desc: myArr_product[index]["pro_desc"],
              pro_name: myArr_product[index]["pro_name"],
              pro_image: myArr_product[index]["pro_image"],
              pro_id: myArr_product[index]["pro_id"],
              pro_offer: myArr_product[index]["pro_offer"],
            );
          },
        ),
      ),
    ));
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  final String pro_offer;

  SingleProduct(
      {this.pro_id,
      this.pro_name,
      this.pro_desc,
      this.pro_image,
      this.pro_offer});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetail()));
        },
        // ignore: unnecessary_new
        child: new Container(
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.all(5),
          child: Row(
            children: [
              Container(
                height: 75,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image)),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5, top: 10),
                  height: 100,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        pro_name,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      new RichText(
                          overflow: TextOverflow.clip,
                          text: TextSpan(children: [
                            TextSpan(
                                text: pro_desc,
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey))
                          ])),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                height: 100,
                width: 50,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Icon(
                      Icons.favorite_border,
                    ),
                    checkOffer(pro_offer)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget checkOffer(String pro_offer) {
    return pro_offer == "1"
        ? Container(
            margin: EdgeInsets.only(right: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: new Text(
              "indirimli",
              style: TextStyle(color: Colors.white, fontSize: 9),
            ))
        : Text("");
  }
}
