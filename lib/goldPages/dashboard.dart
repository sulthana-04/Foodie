import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldPages/graph.dart';
import 'package:foodieadmin/goldPages/orders.dart';
import 'package:foodieadmin/goldPages/restaurants.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';
import 'package:foodieadmin/goldWidgets/title.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body: SingleChildScrollView(
        child: Column(children: [
          FoodieTitle(title: 'Dashboard'),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            height: 300,
            width: width,
            decoration: BoxDecoration(
              color: Colors.green[800],
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(50),
                topRight: const Radius.circular(50),
              ),
            ),
            child: Stack(children: [
              Positioned(
                top: 40,
                left: 30,
                child: Text(
                  "Delivered Orders",
                  style: TextStyle(
                    fontSize: 24,
                    color: themewhite,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 30,
                child: Text(
                  "20",
                  style: TextStyle(
                    fontSize: 150,
                    fontWeight: FontWeight.bold,
                    color: themewhite,
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27),
            child: OrderCard(
              onPressed: () {
                Navigator.push(context,
                    EnterExitRoute(exitPage: Dashboard(), enterPage: Orders()));
              },
              hotelName: "Pending Orders",
              orderAmount: "20",
              redorgreen: Colors.red,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27),
            child: OrderCard(
              onPressed: () {
                Navigator.push(context,
                    EnterExitRoute(exitPage: Dashboard(), enterPage: Restaurants()));
              },
              hotelName: "Restaurants",
              orderAmount: "15",
              redorgreen: themegreen,
            ),
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 7,
            color: themegreen,
            endIndent: 30,
            indent: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27),
            child: OrderCard(
              hotelName: "Graphic Report",
              orderAmount: ">",
              redorgreen: themegreen,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return GraphReport();
                }));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
