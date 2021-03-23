import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class OrderCard extends StatefulWidget {
  final String hotelName;
  final String orderAmount;
  final Color redorgreen;
  final void Function() onPressed;
  const OrderCard(
      {Key key,
      this.hotelName = '',
      this.orderAmount = '',
      this.redorgreen,
      this.onPressed})
      : super(key: key);
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Card(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            color: themedimbalck,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.hotelName,
                  style: commonTextStyle,
                ),
                Text(
                  widget.orderAmount,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: widget.redorgreen,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
