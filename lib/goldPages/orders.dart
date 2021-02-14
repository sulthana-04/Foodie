import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/searchbar.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Orders',
                    style: commonTextStyle,
                  ),
                ),
                SearchBar(),
                OrderCard(
                  hotelName: 'Spoon',
                  orderAmount: '10',
                ),
                OrderCard(
                   hotelName: 'Lavish',
                  orderAmount: '12',
                ),
                OrderCard(
                   hotelName: 'Food Spot',
                  orderAmount: '3',
                ),
                OrderCard(
                   hotelName: 'Wait n Eat',
                  orderAmount: '7',
                ),
                OrderCard(
                   hotelName: 'Cafe Coffee Day',
                  orderAmount: '5',
                ),
                 OrderCard(
                   hotelName: 'Madhurai',
                  orderAmount: '2',
                ),
                 OrderCard(
                   hotelName: 'Alibaba and 41 Dishes',
                  orderAmount: '17',
                ),
                 OrderCard(
                   hotelName: 'Pooram',
                  orderAmount: '1',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String hotelName;
  final String orderAmount;

  const OrderCard({Key key, this.hotelName = '', this.orderAmount = '0'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          color: themedimbalck,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hotelName,
                style: commonTextStyle,
              ),
              Text(
                orderAmount,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: themegreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
