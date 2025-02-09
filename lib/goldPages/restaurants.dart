import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldPages/todayOverView.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';
import 'package:foodieadmin/goldWidgets/searchbar.dart';
import 'package:foodieadmin/model/deliveredorders.dart';
import 'package:foodieadmin/model/shopdetails.dart';
import 'package:foodieadmin/services/getrestaurants.dart';
import 'package:foodieadmin/services/getshopdetails.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  String query = '';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: themecolor,
        appBar: FoodieAppbar(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchBar(
                onChanged: (value) {
                  setState(() {
                    query = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: height * .8,
              child: FutureBuilder(
                future: gethotels(),
                builder: (context, AsyncSnapshot<List<Shop>> snapShot) {
                  if (snapShot.hasData) {
                    final sorted = query == ''
                        ? snapShot.data
                        : snapShot.data
                            .where((element) => element.hotelsname
                                .toLowerCase()
                                .contains(query))
                            .toList();
                    return sorted.length == 0
                        ? Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(
                              'No matches for your search',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: themegreen,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        : ListView.builder(
                            itemCount: sorted.length,
                      itemBuilder: (BuildContext context, int index) {
                        Shop shop = sorted[index];
                        return OrderCard(
                          onPressed: () {
                            Navigator.push(
                                context,
                                EnterExitRoute(
                                    exitPage: Restaurants(),
                                    enterPage: TodayOverView(
                                            hotelName: shop.hotelsname,
                                          )));
                          },
                          hotelName: shop.hotelsname,
                          // orderAmount: '18',
                          redorgreen: themegreen,
                        );
                      },
                    );
                  } else if (snapShot.hasError) {
                    return Center(child: Text('Loading Failed'));
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
