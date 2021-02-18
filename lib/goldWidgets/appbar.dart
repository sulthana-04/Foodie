

import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/login.dart';
import 'package:foodieadmin/goldPages/setting.dart';
import 'package:foodieadmin/goldWidgets/constraints.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class FoodieAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool automaticallyImplyLeading;
  final Widget leading;
  FoodieAppbar(
      {Key key,
      this.title,
      this.automaticallyImplyLeading = true,
      this.leading})
      : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _FoodieAppbarState createState() => _FoodieAppbarState();
}

class _FoodieAppbarState extends State<FoodieAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
       
       elevation: 0,
       shadowColor: themecolor,
       backgroundColor: themecolor,
        title:Image.asset('images/logo.png',width: 100,height: 100,),
        actions: [
          Container(
            padding: EdgeInsets.only(top:20),
            child: Text("Admin Account",style: TextStyle(fontSize:18),)),
          Container(
            padding: EdgeInsets.only(top:5),
            child:PopupMenuButton<String>(
              icon: Image.asset('images/arrowdown.png',),
            
              itemBuilder: (context) => [
        PopupMenuItem(
          
            child: Row(
            children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
              
            // ),
            GestureDetector(
              child:  Text('Setting',style: TextStyle(fontSize:18),),
              onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Settings();
              }));
            }
            
             ),
            
      ],
    )),
  
        PopupMenuItem(
           
            child: Row(
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
            
            // ),
            GestureDetector(
                onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Login();
              }));
            },
              child: Text('Log Out',style: TextStyle(fontSize:18)))
          ],
        )),
      ])


            // itemBuilder: (BuildContext context){
            //   return Constants.choices.map((String choice){
            //     return PopupMenuItem<String>(
            //       value: choice,
            //       child: Text(choice),
                  
            //     );
            //   }).toList();
            // },
          ) ,
            // child: AdminOptions(),
            // child: IconButton(icon:Image.asset('images/arrowdown.png',),onPressed: (){},)
            
            
            
                ],
                );
  
  
  }
}

// void choiceAction(String choice){
//     if(choice == Constants.Settings){
//      Settings();
 
    
//    }else if(choice == Constants.SignOut){
      
//       print('SignOut');
//     }
//     }


