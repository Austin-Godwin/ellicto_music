import 'package:ellicto_music_player/data/divider.dart';
import 'package:ellicto_music_player/widgets/reusableSwitchListTile.dart';
import 'package:ellicto_music_player/widgets/reusableTextListTile.dart';
import 'package:flutter/material.dart';

class PlayLists extends StatelessWidget {
  const PlayLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Playlists',
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
                  titleText: 'Queue settings',
                  subtitleText: 'Play all songs',
                ),
                MyDivider(),
                MySwitchListTIle(
                  titleText: "Don't allow duplicate songs",
                  subtitleText: "Don't allow duplicate in queue",
                ),
                MyDivider(),
                ListTile(
                  contentPadding: EdgeInsets.all(0.0),
                  title: Text(
                    'Manage playlists',
                    style: TextStyle(
                        fontSize: 18.5, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
