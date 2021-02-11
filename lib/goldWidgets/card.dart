import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class ShopCard extends StatefulWidget {
  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: themedimbalck,
      shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(20)),
              
     
    );
  }
}