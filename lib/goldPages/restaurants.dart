import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldPages/todayOverView.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';
import 'package:foodieadmin/goldWidgets/searchbar.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
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
                  // Padding(
                  //   padding: EdgeInsets.symmetric(vertical: 10),
                  //   child: Text(
                  //     'Pending Orders',
                  //     style: commonTextStyle,
                  //   ),
                  // ),
                  SearchBar(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return OrderCard(
                          onPressed: () {
                            Navigator.push(
                                context,
                                EnterExitRoute(
                                    exitPage: Restaurants(),
                                    enterPage: TodayOverView()));
                          },
                          hotelName: 'Spoon',
                          // orderAmount: '18',
                          redorgreen: themegreen,
                        );
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
