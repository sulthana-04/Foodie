import 'package:flutter/material.dart';
import 'package:foodieadmin/assets.dart';
import 'package:foodieadmin/widgets/adminText.dart';
import 'package:foodieadmin/widgets/btForgetPassword.dart';
import 'package:foodieadmin/widgets/colorButton.dart';
import 'package:foodieadmin/widgets/passwordBox.dart';
import 'package:foodieadmin/widgets/textBox.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        width: double.maxFinite,
        child: SingleChildScrollView(
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
                            TextBox(),
                            PasswordBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [CustomTextButton(), ColorButton()],
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
