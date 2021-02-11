import 'package:flutter/material.dart';
import 'package:foodieadmin/goldPages/admin.dart';
import 'package:foodieadmin/goldWidgets/adminText.dart';
import 'package:foodieadmin/goldWidgets/btForgetPassword.dart';
import 'package:foodieadmin/goldWidgets/colorButton.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';
import 'package:foodieadmin/goldWidgets/passwordBox.dart';
import 'package:foodieadmin/goldWidgets/textBox.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: themecolor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: double.maxFinite,
          height: size.width > 530
              ? MediaQuery.of(context).size.width
              : size.height,
          child: Column(
              mainAxisAlignment: size.height < 530
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
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
                          TextBox(
                            margin: EdgeInsets.symmetric(vertical: 25),
                            hintText: 'Email',
                            autoCorrect: false,
                          ),
                          PasswordBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextButton(),
                              ColorButton(
                                buttonAction: () {
                                  //Check the login credentials and give permission to  home page !!!!!!
                                  Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              Admin(),
                                      transitionDuration: Duration(seconds: 0),
                                    ),
                                  );
                                },
                                buttonColor: Color.fromRGBO(48, 187, 0, 50),
                                padding: EdgeInsets.symmetric(
                                    vertical: (6), horizontal: 13),
                                buttonText: 'LOG IN',
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
