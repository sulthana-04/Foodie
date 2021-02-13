import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/adminContent.dart';
import 'package:foodieadmin/goldPages/shopAdd.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/fab.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      floatingActionButton:FancyFab() ,
      // FloatingActionButton(
      //   child: Icon(Icons.add),
      //   backgroundColor: themegreen,
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) {
      //         return ShopAdd();
      //       }),
      //     );
      //   },
      // ),
      body: Admincontents(),
    );
  }
}
