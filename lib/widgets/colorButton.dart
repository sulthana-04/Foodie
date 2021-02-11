import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        print('Show home screen');
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: (6), horizontal: 13),
        child: Text(
          'LOG IN',
          style: TextStyle(color: Colors.white),
        ),
        color: Color.fromRGBO(48, 187, 0, 50),
      ),
    );
  }
}
