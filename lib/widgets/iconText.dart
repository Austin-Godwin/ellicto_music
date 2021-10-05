import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;
  final Color textColor;
  final double iconSize;
  const IconText(
      {Key? key,
      required this.iconData,
      required this.text,
      required this.iconColor,
      required this.textColor,
      required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          size: iconSize,
          color: iconColor,
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 10.0,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }
}
