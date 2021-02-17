

import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/subAdmin.dart';
import 'package:foodieadmin/goldPages/subAdminDetails.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';
import 'package:foodieadmin/goldWidgets/title.dart';

class AdminAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body:SingleChildScrollView(
              child: Column(
          children:[
            FoodieTitle(title:"SubAdmin List"),
            SizedBox(height:20),
            OrderCard(hotelName: 'SubAdmin Name 1',orderAmount: '',onPressed: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SubAdminDetails();
                    }));
            },),
            OrderCard(hotelName: 'SubAdmin Name 2',orderAmount: '',onPressed: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SubAdminDetails();
                    }));
            }),
            OrderCard(hotelName: 'SubAdmin Name 3',orderAmount: '',onPressed: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SubAdminDetails();
                    }));
            },),
          ]
        ),
      )
      

    );
  }
}