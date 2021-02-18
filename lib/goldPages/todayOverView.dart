import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';

class TodayOverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Spoon Restaurant',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
          PageCard(
            cardTitle: 'Delivered Orders',
            amount: '35',
            numberColor: themegreen,
          ),
          
          PageCard( cardTitle: 'Pending Orders',
            amount: '3',
            numberColor: Colors.red,
          ),
        ]),
      ),
    );
  }
}

class PageCard extends StatelessWidget {
  final String cardTitle;
  final String amount;
  final Color numberColor;

  const PageCard({Key key, this.cardTitle, this.amount, this.numberColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        color: themedimbalck,
        height: 150,
        width: double.maxFinite,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                cardTitle,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                amount,
                style: TextStyle(
                    fontSize: 45,
                    color: numberColor,
                    fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}
