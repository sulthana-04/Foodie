import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/deliverboyDetailForAccept.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';

class DeliverboysRequest extends StatefulWidget {
  @override
  _DeliverboysRequestState createState() => _DeliverboysRequestState();
}

class _DeliverboysRequestState extends State<DeliverboysRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: themecolor,
        appBar: FoodieAppbar(),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return OrderCard(
                hotelName: 'Delivery Boy',
                orderAmount: '',
                redorgreen: Colors.red,
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => DeliveryBoyDetailsForAccept()));
                },
              );
            }));
  }
}
