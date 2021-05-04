import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldPages/pendingOrders.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/searchbar.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';
import 'package:foodieadmin/model/pendingorders.dart';
import 'package:foodieadmin/services/getpendingorders.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
                  child:FutureBuilder(
              future: getdata(),
                          builder:(context,snapShot){
                            if(snapShot.hasData){
                            return ListView.builder(
                    itemCount: snapShot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      Pendingorders pendingorders = snapShot.data[index];
                      return OrderCard(
                        
                        onPressed: () {
                          Navigator.push(
                              context,
                              EnterExitRoute(
                                  exitPage: Orders(),
                                  enterPage: PendingOrders()));
                        },
                        hotelName: pendingorders.hotelsname,
                        orderAmount: pendingorders.orderamount,
                        redorgreen: Colors.red,
                      );
                    },
                  );}else if(snapShot.hasError){
               return Center(child:Text('Loading Failed'));
              } else {
                return Center(child: CircularProgressIndicator(),);
              }},
                )
                ),
              ],
          ),
        ),
      ),
    ));
  }
}


