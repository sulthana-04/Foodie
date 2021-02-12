import 'package:flutter/material.dart';
import 'package:foodieadmin/goldWidgets/goldSetting.dart';

class TextBox extends StatelessWidget {
  final double height;
  final double width;
  final String hintText;
  final bool autoCorrect;
  final int maxLines;
  final EdgeInsetsGeometry margin;
  const TextBox(
      {Key key,
      this.height = 50,
      this.hintText = '',
      this.autoCorrect = true,
      this.maxLines = 1,
      this.margin = const EdgeInsets.symmetric(vertical: 15),
      this.width = double.maxFinite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      margin: margin,
      alignment: Alignment.center,
      width: width,
      height: height,
      color: Color.fromRGBO(16, 16, 16, 8),
      child: TextField(
        maxLines: maxLines,
        style: commonTextStyle,
        enableSuggestions: true,
        autocorrect: autoCorrect,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[700]),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
