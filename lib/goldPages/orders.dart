import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldPages/pendingOrders.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/searchbar.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';

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
            height: MediaQuery.of(context).size.height,
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Hotels',
                    style: commonTextStyle,
                  ),
                ),
                SearchBar(),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return OrderCard(
                        onPressed: () {
                          Navigator.push(
                              context,
                              EnterExitRoute(
                                  exitPage: this, enterPage: PendingOrders()));
                        },
                        hotelName: 'Spoon',
                        orderAmount: '2',
                        redorgreen: Colors.red,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
