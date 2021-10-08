import 'package:ellicto_music_player/data/divider.dart';
import 'package:ellicto_music_player/widgets/reusableSingleSwitchListTIle.dart';
import 'package:ellicto_music_player/widgets/reusableSwitchListTile.dart';
import 'package:ellicto_music_player/widgets/reusableSliderListTIle.dart';
import 'package:ellicto_music_player/widgets/reusableTextListTile.dart';
import 'package:flutter/material.dart';

class PlayBack extends StatelessWidget {
  const PlayBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Playback',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Card(
          margin: EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)),
          color: Colors.grey[900],
          child: Padding(
            padding: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 8.0, top: 8.0),
            child: Column(
              children: [
                MyTextListTIle(
                  titleText: 'Sleep timer',
                  subtitleText: 'Off'
                ),
                MyDivider(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: MySliderListTile(text: 'Play speed'),
                ),
                MyDivider(),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: MySliderListTile(text: 'Crossfade between tracks'),
                ),
                MyDivider(),
                MySwitchListTIle(
                  titleText: 'Smart volume',
                  subtitleText:
                  'Automatically adjust each track to the same volume.',
                ),
                MyDivider(),
                MySingleSwitchListTile(
                    titleText: 'Skip silence between tracks'),
                MyDivider(),
                MySingleSwitchListTile(
                    titleText: 'Control music from Lock screen'),
                MyDivider(),
                MySwitchListTIle(
                    titleText: 'Music with screen off',
                    subtitleText:
                    'Connect your headphones to listen to music while your screen is off.')
              ],
            ),
          ),
        )
      ],
    );
  }
}
