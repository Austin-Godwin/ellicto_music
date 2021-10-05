import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClipRect extends StatelessWidget {
  final Widget child;
  const MyClipRect({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      child: child,
    );
  }
}
