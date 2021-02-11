import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class FoodieAppbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  FoodieAppbar({Key key, this.title})
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
            child: IconButton(icon:Image.asset('images/arrowdown.png',),onPressed: (){},)
            ),
                ],
                );
  }
}
