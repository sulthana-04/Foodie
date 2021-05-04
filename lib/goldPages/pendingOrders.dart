import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldPages/orderDetails.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';
import 'package:foodieadmin/model/pendingorders.dart';
import 'package:foodieadmin/services/getpendingorders.dart';

class PendingOrders extends StatefulWidget {
 
  @override
  _PendingOrdersState createState() => _PendingOrdersState();
}

class _PendingOrdersState extends State<PendingOrders> {
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
                    'Pending Orders',
                    style: commonTextStyle,
                  ),
                ),
                Expanded(
                  child:FutureBuilder(
              future: getdata(),
                          builder:(context,snapShot){
                            if(snapShot.hasData){
                            return ListView.builder(
                   itemCount:snapShot.data.length ,
                    itemBuilder: (BuildContext context, int index) {
                      Pendingorders pendingorders = snapShot.data[index];
                      print(snapShot.data);
                      return OrderCard(
                  pendingorders:pendingorders,
                  hotelName: pendingorders.item??"",
                        orderAmount: pendingorders.quantity??"",
                        redorgreen: Colors.red,
                        onPressed: () {
                          Navigator.push(
                              context,
                              EnterExitRoute(
                                  exitPage: PendingOrders(),
                                  enterPage: OrderDetails(pendingorders:pendingorders)));
                        },
                        
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
