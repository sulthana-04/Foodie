import 'package:flutter/material.dart';
import 'package:foodie/goldPages/adminContent.dart';
import 'package:foodie/goldWidgets/appbar.dart';
import 'package:foodie/goldWidgets/goldSetting.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: themecolor,
      appBar:FoodieAppbar(),
    
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),
       backgroundColor: themegreen,
       onPressed: null,
       ),
       
      body: Admincontents(),

    );
  }
}          