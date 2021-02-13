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
        height: height*0.73,
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
              ShopCard(location: "Thrissur ,Town",mobile: "9895301845",hotelname: "Spoon",),
              ShopCard(location: "Thrissur ,Town",mobile: "9895301845",hotelname: "Lavish",),
              ShopCard(location: "Thrissur",mobile: "9895301845",hotelname: "foodSpoot",),
              ShopCard(location: "Thrissur",mobile: "9895301845",hotelname: "China Gate",),
              ShopCard(location: "Thrissur ,Town",mobile: "9895301845",hotelname: "Tea Center",),
              ShopCard(location: "Thrissur ,Town",mobile: "9895301845",hotelname: "Coffee Time",),
              ShopCard(location: "Thrissur ,Town",mobile: "9895301845",hotelname: "foodCourt",),
              ShopCard(location: "Thrissur ,Town",mobile: "9895301845",hotelname: "Food Time",),
              ShopCard(location: "Thrissur ,Town",mobile: "9895301845",hotelname: "Spot Tea",),
             
              ],
            ),
          ),
        ),
      );
   
     
  }
}