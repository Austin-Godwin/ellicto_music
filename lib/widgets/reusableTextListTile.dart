import 'package:flutter/material.dart';

class MyTextListTIle extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  const MyTextListTIle({Key? key, required this.titleText, required this.subtitleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0.0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: TextStyle(
                fontSize: 17.5, color: Colors.white),
          ),
          SizedBox(height: 2.0,),
          Text(
            subtitleText,
            style: TextStyle(color: Colors.blue[700], fontSize: 13.0),
          ),
        ],
      ),
    );
  }
}
