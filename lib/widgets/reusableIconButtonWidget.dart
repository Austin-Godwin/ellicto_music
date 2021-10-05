import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onTap;
  double? size;
  MyIconButton({Key? key, required this.icon, required this.onTap, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      splashRadius: 20.0,
      iconSize: 20.0,
      icon: icon,
      onPressed: onTap,
    );
  }
}
