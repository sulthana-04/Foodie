import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/card.dart';

class AdminCard extends StatefulWidget {
  @override
  _AdminCardState createState() => _AdminCardState();
}

class _AdminCardState extends State<AdminCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Container(
        // width: width,
        height: height*0.8,
        // color: Colors.red,
        child:Center(
          child: Container( 
            // height: height,
            margin: EdgeInsets.symmetric(vertical:10,horizontal: 28),
            child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: [
              ShopCard(),
              ShopCard(),
              ShopCard(),
              ShopCard(),
              ShopCard(),
              ShopCard(),
              ],
            ),
          ),
        ),
      );
   
     
  }
}