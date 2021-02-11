import 'package:flutter/material.dart';

class Admincontents extends StatefulWidget {
  @override
  _AdmincontentsState createState() => _AdmincontentsState();
}

class _AdmincontentsState extends State<Admincontents> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.red,
      height: height,
      width: width,
      child: Column(),
    );
  }
}
