import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body:SingleChildScrollView(
              child: Column(
          children:[
            OrderCard(hotelName: 'SubAdmin',orderAmount: '',),
            OrderCard(hotelName: 'Users',orderAmount: '',),
            OrderCard(hotelName: 'Account',orderAmount: '',),
          ]
        ),
      )
      

    );
  }
}