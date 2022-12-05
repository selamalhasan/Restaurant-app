// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:restaurant/pages/account/changePassword.dart';
import 'package:restaurant/pages/account/myProfile.dart';
import 'package:restaurant/pages/favorite/favorite.dart';
import 'package:restaurant/pages/order/tracking.dart';
import 'package:restaurant/pages/product/category.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Selam Alhasan",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text("selamalhasan99@gmail.com",
                style: TextStyle(color: Colors.grey)),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.grey[100]),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new MyProfile()));
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text("Hesabım"),
                    leading: Icon(
                      Icons.person,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new ChangePassword()));
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text("Şifre değiştir"),
                    leading: Icon(
                      Icons.lock_open,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Category()));
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text("Adreslerim"),
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Favorite()));
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text("Favorilerim"),
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Tracking()));
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text("Aktif Siparişlerim"),
                    leading: Icon(
                      Icons.delivery_dining_outlined,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  ListTile(
                    title: Text("Geçmiş Siparişlerim"),
                    leading: Icon(
                      Icons.settings_backup_restore_rounded,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  ListTile(
                    title: Text("Yardım"),
                    leading: Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
