// ignore_for_file: avoid_unnecessary_containers, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant/pages/drawer/mydrawer.dart';
import 'package:restaurant/pages/product/category.dart';
import 'package:restaurant/pages/product/product_detail.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _KeyDrawer = GlobalKey<ScaffoldState>();
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
  ];
  var myArr_category = [
    {"cat_1": "1", "cat_name": "cat1", "cat_image": "images/category/cat1.png"},
    {"cat_1": "2", "cat_name": "cat2", "cat_image": "images/category/cat2.png"},
    {"cat_1": "3", "cat_name": "cat3", "cat_image": "images/category/cat3.png"},
    {"cat_1": "4", "cat_name": "cat4", "cat_image": "images/category/cat4.png"},
    {"cat_1": "5", "cat_name": "cat5", "cat_image": "images/category/cat5.png"},
    {"cat_1": "6", "cat_name": "cat6", "cat_image": "images/category/cat6.png"},
    {"cat_1": "7", "cat_name": "cat7", "cat_image": "images/category/cat7.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Scaffold(
        key: _KeyDrawer,
        drawer: MyDrawer(),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              new Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: new Container(
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15)),
                        child: new TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          _KeyDrawer.currentState.openDrawer();
                        },
                        child: new Icon(
                          Icons.menu,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  child: ListView.builder(
                    itemCount: myArr_category.length,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleCategory(
                        cat_id: myArr_category[index]["cat_id"],
                        cat_image: myArr_category[index]["cat_image"],
                        cat_name: myArr_category[index]["cat_name"],
                      );
                    },
                  )),
              new Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 260,
                  child: ListView.builder(
                    itemCount: myArr_product.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleProduct(
                        pro_id: myArr_product[index]["pro_id"],
                        pro_name: myArr_product[index]["pro_name"],
                        pro_desc: myArr_product[index]["pro_desc"],
                        pro_image: myArr_product[index]["pro_image"],
                      );
                    },
                  )),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.red,
          selectedFontSize: 14,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 20,
                ),
                label: 'Bildirim'),
            BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new Category()));
                  },
                  child: Icon(
                    Icons.restaurant_menu,
                    size: 20,
                  ),
                ),
                label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 20,
                ),
                label: 'Hesabım'),
          ],
        ),
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
        padding: EdgeInsets.all(10),
        child: Column(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
            ),
            new Text(
              pro_name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            new Text(
              pro_desc,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  SingleCategory({this.cat_id, this.cat_name, this.cat_image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red[100]),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
