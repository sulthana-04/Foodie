import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/appbar.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/title.dart';

class ShopDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      
      body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
          children:[
            FoodieTitle(title: 'Shop Details',),
            SizedBox(height:30),
            FoodieList(data: "Spoon",),
            FoodieAddress(address: 'Thrissur , Town ',),
            FoodieList(data: "680680",),
            line,
            FoodieTitle(title:'Owner Detail'),
            SizedBox(height:30),
            FoodieList(data: "AKHIL",),
            FoodieAddress(address: 'Thrissur , Town',),
            FoodieList(data: "9898989898",),
            FoodieList(data: "akhil@gmail.com",),
            line, 
          ]
        ),
      )
      
     
      
    );
  }
}

class FoodieList extends StatelessWidget {
  final String data;
  final double height; 

  
  const FoodieList({Key key, this.data, this.height:50,  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
            //  color: Colors.red,
            height: height,
            width: width,
            padding: EdgeInsets.only(left:40,top:12),
            
            child: Text("$data",style: TextStyle(fontSize: 23,color: themewhite),),
    );
  }
}

class FoodieAddress extends StatelessWidget {
  final String address;
  final bool multiline;
  const FoodieAddress({Key key, this.address, this.multiline=false,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Container(
            // color: Colors.purple,
            height:multiline?null:50,
            width: width*0.82,
            padding: EdgeInsets.only(left:0,top:12),
            child: Text("$address",style: TextStyle(fontSize: 23,color: themewhite),),
            );
  }
}