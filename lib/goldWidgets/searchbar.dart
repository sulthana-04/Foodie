import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
double width = MediaQuery.of(context).size.width;

    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                   
                     Container(
                       
                       width: width,
                      //  color: Colors.green,
                      
                      // margin: EdgeInsets.symmetric(horizontal:width*0.1),
                       child: TextField(
                          style: TextStyle(color:themewhite,fontSize: 18),
                showCursor: false,
                decoration: InputDecoration(                
                border: InputBorder.none,
                
                icon: Icon(Icons.search,color:themewhite,size: 35,),
                hintText: "SEARCH FOR SHOPS AND HOTELS",
                hintStyle: TextStyle(color:themedimwhite,fontSize: 14),
                focusColor: themewhite,
              ),),
                 ),//text inputbox container
              Divider(thickness: 7,color: themegreen,
              // endIndent: 45,indent: 45,
              )
                  ]
              );
  }}