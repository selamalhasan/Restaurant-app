// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant/pages/product/product_detail.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var myArr_product = [
    {
      "pro_id": "1",
      "pro_name": "pizza",
      "pro_desc": "this is desc",
      "pro_image": "images/product/pro1.jpg"
    },
    {
      "pro_id": "2",
      "pro_name": "pizza2",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro2.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg"
    },
    {
      "pro_id": "1",
      "pro_name": "pizza",
      "pro_desc": "this is desc",
      "pro_image": "images/product/pro1.jpg"
    },
    {
      "pro_id": "2",
      "pro_name": "pizza2",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro2.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg"
    },
    {
      "pro_id": "1",
      "pro_name": "pizza",
      "pro_desc": "this is desc",
      "pro_image": "images/product/pro1.jpg"
    },
    {
      "pro_id": "2",
      "pro_name": "pizza2",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro2.jpg"
    },
    {
      "pro_id": "3",
      "pro_name": "pizza3",
      "pro_desc": "desc product1 desc product1 desc product1 desc product1",
      "pro_image": "images/product/pro3.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Favorilerim",
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
        child: GridView.builder(
            itemCount: myArr_product.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemBuilder: (BuildContext context, int index) {
              return SingleProduct(
                pro_id: myArr_product[index]["pro_id"],
                pro_name: myArr_product[index]["pro_name"],
                pro_image: myArr_product[index]["pro_image"],
                pro_desc: myArr_product[index]["pro_desc"],
              );
            }),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  SingleProduct({this.pro_id, this.pro_name, this.pro_desc, this.pro_image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: new Container(
        margin: EdgeInsets.all(5),
        height: 400,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.all(10),
        child: Column(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2 - 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
            ),
            Expanded(
              child: new Text(
                pro_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Text(pro_id),
                Expanded(child: Text("")),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
