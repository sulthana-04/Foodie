import 'package:flutter/material.dart';
import 'package:foodieadmin/assets.dart';
import 'package:foodieadmin/goldWidgets/adminText.dart';
import 'package:foodieadmin/goldWidgets/btForgetPassword.dart';
import 'package:foodieadmin/goldWidgets/colorButton.dart';
import 'package:foodieadmin/goldWidgets/passwordBox.dart';
import 'package:foodieadmin/goldWidgets/textBox.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          width: double.maxFinite,
          child:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:SizedBox(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    logo,
                    width: 180,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AdminText(),
                            TextBox(),
                            PasswordBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextButton(),
                                ColorButton()
                              ],
                            )
                          ]),
                    ),
                  ),
                ]),
        ),
        ),
      ),
    );
  }
}
