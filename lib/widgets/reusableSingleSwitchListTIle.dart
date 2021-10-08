import 'package:flutter/material.dart';

class MySingleSwitchListTile extends StatefulWidget {
  final String titleText;
  const MySingleSwitchListTile({Key? key, required this.titleText}) : super(key: key);

  @override
  State<MySingleSwitchListTile> createState() => _MySingleSwitchListTileState();
}

class _MySingleSwitchListTileState extends State<MySingleSwitchListTile> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      activeTrackColor: Colors.blue[700],
      activeColor: Colors.white,
      contentPadding: EdgeInsets.all(0.0),
      title: Text(
        widget.titleText,
        style: TextStyle(
            fontSize: 17.5, color: Colors.white),
      ),
      value: _isChecked,
      onChanged: (bool value) {
        setState(() {
          _isChecked = value;
        });
      },
    );
  }
}
