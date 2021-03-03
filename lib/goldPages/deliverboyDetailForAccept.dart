import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/admin.dart';
import 'package:foodieadmin/goldPages/shopDetails.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/attachmentButton.dart';
import 'package:foodieadmin/goldWidgets/colorButton.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/title.dart';

class DeliveryBoyDetailsForAccept extends StatelessWidget {
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
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Admin()),
                  );
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            FoodieTitle(title: 'PERSONAL INFO',),
            SizedBox(height:30),
            FoodieList(data: "Steve Jobs",),
            FoodieAddress(address: 'Thrissur , Town \n 680680 ',multiline: true,),
            FoodieList(data: "Age: 21",),
            FoodieList(data: "Mob : 9898989898",),
            FoodieList(data: "Blood Group : A+",),
            line,
            FoodieTitle(title:'Vechicle Details'),
            SizedBox(height:30),
            FoodieList(data: "License Number : 0000/0000/0000",),
            FoodieList(data: "Vechile Name :  FZ",),
            FoodieAddress(address: 'Vechicle Colour : Green',),
            FoodieList(data: "Reg.no : KL08AB 1231",),
            SizedBox(
              width: wt*.82,
              child: Row(

                children:[
                AttachmentButton(title:"Download License"),
                VerticalDivider(),
                AttachmentButton(title:"Download RC"),
              ]),
            ),
            SizedBox(height:20),
            line, 
            SizedBox(height:10),
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
                          buttonText: 'REJECT',
                          padding: wt > 600
                              ? EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 20)
                              : EdgeInsets.symmetric(
                                  horizontal: 23, vertical: 8),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ColorButton(
                          buttonAction: () {
                            //Add new hotel/shope to the database !!!!
                            print('Create a new hotel entry');
                          },
                          buttonColor: themegreen,
                          buttonText: 'ACCEPT',
                          padding: wt > 600
                              ? EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 20)
                              : EdgeInsets.symmetric(
                                  horizontal: 23, vertical: 8),
                        ),
                      ),
                    ],
                  ),
                )
          ]
        ),
      )
                
        
    );
  }
}

