import 'package:ellicto_music_player/data/customTrackShape.dart';
import 'package:flutter/material.dart';

class MySliderListTile extends StatefulWidget {
  final String text;
  const MySliderListTile({Key? key, required this.text}) : super(key: key);

  @override
  State<MySliderListTile> createState() => _MySliderListTileState();
}

class _MySliderListTileState extends State<MySliderListTile> {
  double _slider = 1.0;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      contentPadding: EdgeInsets.all(0.0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 17.5, color: Colors.white),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackShape: CustomTrackShape(),
              thumbShape: RoundSliderThumbShape(
                disabledThumbRadius: 9.0,
                enabledThumbRadius: 9.0,
              ),
            ),
            child: Slider(
                thumbColor: Colors.blue[700],
                activeColor: Colors.blue[700],
                inactiveColor: Colors.blueGrey[600],
                value: _slider,
                min: 0.0,
                max: 5.0,
                onChanged: (double value) {
                  setState(() {
                    _slider = value;
                  });
                }),
          ),
        ],
      ),
    );
  }
}