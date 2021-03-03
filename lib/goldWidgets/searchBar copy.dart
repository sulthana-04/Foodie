import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';


class Searchbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Container(
        // color: Colors.red,
        height: 100,
        width: width,
        child: Column(
          children: [
            Container(
              // color: Colors.purple,
              width:width,
              height: 90,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                   
                     Container(
                       
                       width: width,
                      //  color: Colors.green,
                      
                      margin: EdgeInsets.symmetric(horizontal:width*0.1),
                       child: TextField(
                          style: TextStyle(color:themewhite,fontSize: 18),
                showCursor: false,
                decoration: InputDecoration(                
                border: InputBorder.none,
                
                icon: Icon(Icons.search,color:themewhite,size: 35,),
                hintText: "SEARCH DELIVERY BOYS",
                hintStyle: TextStyle(color:themedimwhite,fontSize: 14),
                focusColor: themewhite,
              ),),
                 ),//text inputbox container
              Divider(thickness: 7,color: themegreen,
              // endIndent: 45,indent: 45,
              ),
                  ]
              ),
          
            )
         
        ]),
    );

        
        
    
   
   
  }
}