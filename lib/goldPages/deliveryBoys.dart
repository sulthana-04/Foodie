import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/DeliveryBoysRequests.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/commoncard.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/searchBar%20copy.dart';

class DeliveryBoys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.notification_important,
          ),
          backgroundColor: themegreen,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DeliverboysRequest();
              }),
            );
          },
        ),
        backgroundColor: themecolor,
        appBar: FoodieAppbar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'DELIVERY BOYS',
                style: commonTextStyle,
              ),
              Searchbar(),
              SizedBox(
                height: 1,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return CommonCard(
                      hotelname: "Anumodh",
                      location: "Thrissur Root",
                      mobile: "9895301845",
                    );
                  },
                ),
              )
            ]),
          ),
        )));
  }
}
