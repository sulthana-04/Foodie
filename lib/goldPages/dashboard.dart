import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    // final height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body: SingleChildScrollView(
              child: Column(
          children:[
            Container(
              padding: EdgeInsets.only(top:30,left:33),
              // color: Colors.red,
              height: 50,
              width: width,
              child: Text('Dashboard',
              style: TextStyle(fontSize:20,
              fontWeight: FontWeight.bold,
              color: themewhite,
              ),
              ),
              ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            height:300,
            width:width,
            decoration: BoxDecoration(
                color:Colors.green[800],
                borderRadius:
                BorderRadius.only(topLeft:const Radius.circular(50),
                                  topRight: const Radius.circular(50),
                ),
            ),
           child: Stack(
             children:[
               Positioned(
                 top: 40,
                 left: 30,
                 child:Text("Delivered Orders",style: TextStyle(
                   fontSize: 24,
                   color: themewhite,
                   ),
                   ),
                  ),
               
                Positioned(
                 top: 80,
                 left: 30,
                 child:Text("20",style: TextStyle(
                   fontSize: 150,
                   fontWeight: FontWeight.bold,
                   color: themewhite,
                   ),
                   ),
                  ), 
             ]
           ),
          ),
        SizedBox(height:20) , 
          
  Container(margin: EdgeInsets.symmetric(horizontal:27),
    child: OrderCard(
      onPressed: (){

      },
                 hotelName: "Orders",
                 orderAmount: "20",
                 redorgreen: themegreen,
               ),
  ),
  
    Container(margin: EdgeInsets.symmetric(horizontal:27),
    child: OrderCard(
                 hotelName: "Pending Orders",
                 orderAmount: "20",
                 redorgreen:Colors.red ,
               ),
  ),

    Container(margin: EdgeInsets.symmetric(horizontal:27),
    child: OrderCard(
                 hotelName: "Restaurants",
                 orderAmount: "20",
                 redorgreen: themegreen,
               ),
  ),
SizedBox(height:10),
  Divider(thickness: 7,color: themegreen,endIndent: 30,indent: 30,),

 Container(margin: EdgeInsets.symmetric(horizontal:27),
    child: OrderCard(
                 hotelName: "Graphic Report",
                 orderAmount: ">",
                 redorgreen: themegreen,
               ),
  ),

          ]
        ),
      ),
    );
  }
}