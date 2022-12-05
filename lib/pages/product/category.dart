import 'package:flutter/material.dart';
import 'package:restaurant/pages/home/home.dart';
import 'package:restaurant/pages/product/subcategory.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Kategoriler",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: myArr_category.length,
          itemBuilder: (BuildContext context, int index) {
            return SingleCategory(
              cat_id: myArr_category[index]["cat_id"],
              cat_image: myArr_category[index]["cat_image"],
              cat_name: myArr_category[index]["cat_name"],
            );
          },
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
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new SubCategory(
                            cat_id: cat_id,
                            cat_name: cat_name,
                          )));
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red[100]),
                child: Image.asset(cat_image),
              ),
              title: Text(
                cat_name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
