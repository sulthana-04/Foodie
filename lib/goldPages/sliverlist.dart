import 'package:flutter/material.dart';
import 'package:foodieadmin/animations/enterExitAniation.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'dart:math' as math;

import 'package:foodieadmin/goldWidgets/orderCard.dart';

import 'orderDetails.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText, Color headerColor) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 100.0,
        child: Container(
          color: headerColor,
          child: Center(
            child: Text(
              headerText,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('Spoon Restaurant',Colors.black),
        makeHeader('Pending Orders', Colors.red),
        SliverFixedExtentList(
          itemExtent: 80,
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (index > 2) return null;
            return OrderCard(
              onPressed: () {
                Navigator.push(context,
                    EnterExitRoute(exitPage: this, enterPage: OrderDetails()));
              },
              hotelName: 'Chicken 65',
              orderAmount: '1',
              redorgreen: Colors.red,
            );
          }),
        ),
        makeHeader('Delivered Orders', themegreen),
        SliverFixedExtentList(
          itemExtent: 80,
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            if (index > 20) return null;
            return OrderCard(
              onPressed: () {
                Navigator.push(context,
                    EnterExitRoute(exitPage: this, enterPage: OrderDetails()));
              },
              hotelName: 'Chicken 65',
              orderAmount: '1',
              redorgreen: themegreen,
            );
          }),
        ),
      ],
    );
  }
}
