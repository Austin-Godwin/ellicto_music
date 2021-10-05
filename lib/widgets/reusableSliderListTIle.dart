import 'package:flutter/material.dart';

class MySliderListTile extends StatefulWidget {
  final String text;
  const MySliderListTile({Key? key, required this.text}) : super(key: key);

  @override
  State<MySliderListTile> createState() => _MySliderListTileState();
}

class _MySliderListTileState extends State<MySliderListTile> {
  @override
  Widget build(BuildContext context) {
    double _slider = 1.0;
    return  ListTile(
      contentPadding: EdgeInsets.all(0.0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                fontSize: 18.5, color: Colors.white),
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
          Divider(
            indent: 2.0,
            color: Colors.grey[800],
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight! / 2.5;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 1.5;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
