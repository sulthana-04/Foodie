import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/admin.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/colorButton.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/textBox.dart';

class ShopAdd extends StatefulWidget {
  @override
  _ShopAddState createState() => _ShopAddState();
}

class _ShopAddState extends State<ShopAdd> {
  @override
  Widget build(BuildContext context) {
    double wt = MediaQuery.of(context).size.width;
    double ht = MediaQuery.of(context).size.height;
    print('width $wt');
    print('height $ht');
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: themedimbalck,
            title: Text(
              'Discard Changes ?',
              style: commonTextStyle,
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    'Would you like to discard all changes',
                    style: commonTextStyle,
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              ColorButton(
                padding: wt > 600
                    ? EdgeInsets.symmetric(horizontal: 50, vertical: 15)
                    : EdgeInsets.symmetric(horizontal: 23, vertical: 8),
                buttonColor: themegreen,
                buttonText: ('No'),
                buttonAction: () {
                  Navigator.of(context).pop();
                },
              ),
              ColorButton(
                padding: wt > 600
                    ? EdgeInsets.symmetric(horizontal: 50, vertical: 15)
                    : EdgeInsets.symmetric(horizontal: 23, vertical: 8),
                buttonColor: Colors.red,
                buttonText: ('Yes'),
                buttonAction: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => Admin()),
                      (Route<dynamic> route) => false);
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              _showMyDialog();
            }),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 25, right: 25),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Shop Account',
                  style: commonTextStyle,
                ),
                TextBox(
                  margin: EdgeInsets.only(top: 25, bottom: 15),
                  hintText: 'Hotel\'s Name',
                ),
                TextBox(
                  hintText: 'Hotel\'s Location, Landmark',
                ),
                TextBox(
                  height: 90,
                  hintText: 'Hotel\'s Address',
                  maxLines: 5,
                ),
                TextBox(
                  hintText: 'pincode',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    color: themegreen,
                    thickness: 3,
                  ),
                ),
                TextBox(
                  hintText: 'Owner\'s Name',
                ),
                TextBox(
                  maxLines: 5,
                  height: 90,
                  hintText: 'Owner\'s Address',
                ),
                TextBox(
                  hintText: 'Contact Number',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    color: themegreen,
                    thickness: 3,
                  ),
                ),
                TextBox(
                  hintText: 'Email',
                ),
                TextBox(
                  hintText: 'Password',
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: ColorButton(
                          buttonAction: () {
                            _showMyDialog();
                          },
                          buttonColor: Colors.red,
                          buttonText: 'CANCEL',
                          padding: wt > 400
                              ? EdgeInsets.symmetric(
                                  horizontal: 45, vertical: 20)
                              : EdgeInsets.symmetric(
                                  horizontal: 23, vertical: 16),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ColorButton(
                          buttonAction: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => Admin()),
                                (Route<dynamic> route) => false);
                            // ignore: todo
                            //TODO: Add new hotel/shop to the database !!!!
                            print('Create a new hotel entry');
                          },
                          buttonColor: themegreen,
                          buttonText: 'CREATE',
                          padding: wt > 400
                              ? EdgeInsets.symmetric(
                                  horizontal: 45, vertical: 20)
                              : EdgeInsets.symmetric(
                                  horizontal: 23, vertical: 16),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
