import 'package:flutter/material.dart';

class MySwitchListTIle extends StatefulWidget {
  final String titleText;
  final String subtitleText;
  const MySwitchListTIle({Key? key, required this.titleText, required this.subtitleText}) : super(key: key);

  @override
  State<MySwitchListTIle> createState() => _MySwitchListTIleState();
}

class _MySwitchListTIleState extends State<MySwitchListTIle> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: SwitchListTile(
        activeTrackColor: Colors.blue[700],
        activeColor: Colors.white,
        contentPadding: EdgeInsets.all(0.0),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.titleText,
              style: TextStyle(
                  fontSize: 17.5, color: Colors.white),
            ),
            SizedBox(height: 2.0,),
            Text(
              widget.subtitleText,
              style: TextStyle(color: Colors.grey, fontSize: 13.0),
            ),
          ],
        ),
        value: _isChecked,
        onChanged: (bool value) {
          setState(() {
            _isChecked = value;
          });
        },
      ),
    );
  }
}
