import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldPages/accounts.dart';
import 'package:foodieadmin/goldPages/deliveryBoys.dart';
import 'package:foodieadmin/goldPages/subAdmin.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: themecolor,
        appBar: FoodieAppbar(),
        body: SingleChildScrollView(
          child: Column(children: [
            OrderCard(
              hotelName: 'SubAdmin',
              orderAmount: '',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex) {
                  return SubAdmin();
                }));
              },
            ),
            OrderCard(
              hotelName: 'Delivery Boys',
              orderAmount: '2',
              redorgreen: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (contex) {
                  return DeliveryBoys();
                }));
              },
            ),
            OrderCard(
              hotelName: 'Accounts',
              orderAmount: '',
              onPressed: () {
                Navigator.push(context,
                    EnterExitRoute(exitPage: this, enterPage: AdminAccounts()));
              },
            ),
          ]),
        ));
  }
}
