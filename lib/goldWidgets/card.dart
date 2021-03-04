import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/shopDetails.dart';
import 'package:foodieadmin/goldPages/shopEdit.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class ShopCard extends StatefulWidget {
  final String hotelname;
  final String location;
  final String mobile;

  const ShopCard({Key key, this.hotelname, this.location, this.mobile})
      : super(key: key);

  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context1) {
            return ShopDetails();
          }),
        );
      },
      child: Card(
        color: themedimbalck,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Stack(children: [
          Positioned(
              left: width * 0.040,
              top: height * 0.02,
              child: Text(widget.hotelname,
                  style: TextStyle(
                      color: themewhite,
                      fontSize: 22,
                      fontWeight: FontWeight.w800))),
          Positioned(
              left: width * 0.040,
              top: height * 0.06,
              child: Text(widget.location,
                  style: TextStyle(
                    color: themewhite,
                    fontSize: 14,
                  ))),
          Positioned(
              left: width * 0.040,
              top: height * 0.09,
              child: Text(widget.mobile,
                  style: TextStyle(
                    color: themewhite,
                    fontSize: 14,
                  ))),
          Positioned(
              left: width * 0.300,
              top: height * 0.15,
              child: IconButton(
                icon: Image.asset(
                  'images/edit.png',
                  width: 35,
                  height: 35,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ShopEdit();
                    }),
                  );
                },
                splashRadius: 1,
              )),
        ]),
      ),
    );
  }
}
