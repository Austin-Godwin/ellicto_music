import 'package:ellicto_music_player/data/divider.dart';
import 'package:ellicto_music_player/widgets/reusableSingleSwitchListTIle.dart';
import 'package:ellicto_music_player/widgets/reusableTextListTile.dart';
import 'package:flutter/material.dart';

class General extends StatelessWidget {
  const General({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'General',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Card(
          margin: EdgeInsets.all(0.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: Colors.grey[900],
          child: Padding(
            padding: const EdgeInsets.only(
                left: 22.0, right: 22.0, bottom: 8.0, top: 8.0),
            child: Column(
              children: [
                MyTextListTIle(
                  titleText: 'Manage tabs',
                  subtitleText:
                      'Spotify, Favourites, Playlists, Tracks, Albums, Artists, Folders',
                ),
                MyDivider(),
                MyTextListTIle(
                  titleText: 'Dark mode',
                  subtitleText: 'Default',
                ),
                MyDivider(),
                MySingleSwitchListTile(
                    titleText: 'Allow external devices to start playback'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
