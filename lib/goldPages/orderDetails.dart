import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Order Details',
                    style: commonTextStyle,
                  ),
                ),
                OrderSummary(),
                ItemCard(),
                BillCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle cardTextleft = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w300,
    );
    TextStyle cardTextRight = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Card(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 20, 30, 20),
          height: 200,
          color: themedimbalck,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Date', style: cardTextleft),
                  Text('14/02/2020', style: cardTextRight),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment', style: cardTextleft),
                  Text(
                    'CASH',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: themegreen,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address', style: cardTextleft),
                  Text('Kannanaikkal (H)\nP.O.Thangaloor\nThrissur',
                      style: cardTextRight),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    TextStyle cardTextRight = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );
    return Card(
      child: Container(
        height: width < 330 ? 75 : 100,
        width: width < 330 ? null : width*.78,
        color: themedimbalck,
        child: Row(
          children: [
            Container(
              width: width < 330 ? 70 : 100,
              height: width < 330 ? 70 : 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Chicken_65_%28Dish%29.jpg/1280px-Chicken_65_%28Dish%29.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Chicken 65',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Price :          900/-',
                    style: cardTextRight,
                  ),
                  Text(
                    'Quantity :    1KG    x1',
                    style: cardTextRight,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BillCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget padding = Padding(padding: EdgeInsets.symmetric(vertical: 10));
    TextStyle bold = TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    );
    TextStyle normal = TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w400,
    );
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Card(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 20, 30, 20),
          color: themedimbalck,
          width: double.maxFinite,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('ANUMODH', style: bold),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Text('9876543210', style: normal),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: SizedBox(
                height: 90,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order Price',
                              style: normal,
                            ),
                            Text(
                              '900',
                              style: bold,
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Charge',
                              style: normal,
                            ),
                            Text(
                              '40.0',
                              style: bold,
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Tax',
                              style: normal,
                            ),
                            Text(
                              '2.0',
                              style: bold,
                            ),
                          ]),
                    ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Divider(
                thickness: 7,
                color: themegreen,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Total',
                style: normal,
              ),
              Text(
                '942.0',
                style: bold,
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
