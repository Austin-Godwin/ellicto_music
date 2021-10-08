import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0.0,
      indent: 0.0,
      color: Colors.grey[800],
      thickness: 1.5,
    );
  }
}
