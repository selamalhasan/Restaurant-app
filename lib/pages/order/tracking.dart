// ignore_for_file: prefer_const_constructors, unnecessary_new, sort_child_properties_last
import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget getTimeLine() {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 80),
      color: Colors.grey[75],
      child: Column(children: [
        new Container(
            height: 50,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Onay bekliyor",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )),
        new Container(
            height: 50,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Hazırlanıyor",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )),
        new Container(
            height: 50,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Yola çıktı",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )),
        new Container(
            height: 50,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              endChild: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Teslim edildi",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )),
      ]),
    );
  }

  Widget getInfoDelivery() {
    return Container(
      child: ListTile(
        title: Text(
          "Delivery:",
          style: TextStyle(fontSize: 16),
        ),
        subtitle: Text(
          "selam",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
        ),
        leading: Container(
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/product/pro1.jpg"))),
        ),
        trailing: Container(
          width: 50,
          child: new Column(
            children: [
              Row(
                children: [
                  new Icon(
                    Icons.star_border,
                    color: Colors.red,
                  ),
                  new Text(
                    "4.1",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              new Text(
                "1444444",
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Aktif Siparişlerim",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 5),
            child: InkWell(
              onTap: () {},
              child: Row(children: [
                new Icon(
                  Icons.chat,
                  color: Colors.red,
                )
              ]),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          new Text(
            "Tahmini Teslimat",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          new Text(
            "05:30",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Divider(
              color: Colors.grey[200],
            ),
          ),
          getInfoDelivery(),
          getTimeLine(),
        ],
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: () {},
          child: new Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Siparişi iptal et",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
