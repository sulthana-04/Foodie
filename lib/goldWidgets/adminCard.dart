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
    return Container(
      height: height * 0.73,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 28,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ShopCard(
                  location: "Thrissur ,Town",
                  mobile: "9895301845",
                  hotelname: "Spoon",
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
