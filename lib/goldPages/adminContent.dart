import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/adminCard.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class Admincontents extends StatefulWidget {
  @override
  _AdmincontentsState createState() => _AdmincontentsState();
}

class _AdmincontentsState extends State<Admincontents> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        // color: Colors.red,
        height: height,
        width: width,
        child: Column(
          children: [
            Container(
              // color: Colors.purple,
              width: width,
              height: 90,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width,
                      //  color: Colors.green,

                      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                      child: TextField(
                        style: TextStyle(color: themewhite, fontSize: 18),
                        showCursor: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: themewhite,
                            size: 35,
                          ),
                          hintText: "SEARCH FOR SHOPS AND HOTELS",
                          hintStyle:
                              TextStyle(color: themedimwhite, fontSize: 14),
                          focusColor: themewhite,
                        ),
                      ),
                    ), //text inputbox container
                    Divider(
                      thickness: 7,
                      color: themegreen,
                      endIndent: 45,
                      indent: 45,
                    )
                  ]),
            ),
            AdminCard(),
          ],
        ),
      ),
    );
  }
}
