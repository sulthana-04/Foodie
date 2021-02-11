import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/colorButton.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/textBox.dart';

class ShopAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  ColorButton(
                    buttonAction: (){
                      print('Create a new hotel entry');
                    },
                    buttonColor: themegreen,
                    buttonText: 'CREATE',
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                  ),
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
