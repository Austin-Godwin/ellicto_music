import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  double marginLeft;
  double marginRight;
  MyTextWidget(
      {Key? key,
      required this.text,
      this.onTap,
      this.marginLeft = 0.0,
      this.marginRight = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
        child: Container(
            margin: EdgeInsets.only(left: marginLeft, right: marginRight),
            child: Text(
              text,
              style: TextStyle(fontSize: 20.0),
            )));
  }
}
