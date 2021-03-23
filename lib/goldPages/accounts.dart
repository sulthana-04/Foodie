import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/subAdminDetails.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/orderCard.dart';
import 'package:foodieadmin/goldWidgets/title.dart';

class AdminAccounts extends StatefulWidget {
  @override
  _AdminAccountsState createState() => _AdminAccountsState();
}

class _AdminAccountsState extends State<AdminAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: themecolor,
        appBar: FoodieAppbar(),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              FoodieTitle(title: "SubAdmin List"),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return OrderCard(
                        hotelName: 'SubAdmin Name 1',
                        orderAmount: '',
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SubAdminDetails()));
                        },
                      );
                    }),
              ),
            ]),
          ),
        ));
  }
}
