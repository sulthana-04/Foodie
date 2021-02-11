import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      margin: EdgeInsets.symmetric(vertical: 25),
      alignment: Alignment.center,
      width: double.maxFinite,
      height: 50,
      color: Color.fromRGBO(16, 16, 16, 8),
      child: TextField(
        style: TextStyle(color: Colors.white,
        fontSize: 17),
        enableSuggestions: true,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: 'Email',
          hintStyle: TextStyle(color: Colors.grey[700]),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
