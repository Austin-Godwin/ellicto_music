import 'package:ellicto_music_player/data/divider.dart';
import 'package:ellicto_music_player/widgets/reusableIconButtonWidget.dart';
import 'package:ellicto_music_player/widgets/reusableTrackPopupWidget.dart';
import 'package:flutter/material.dart';

class AudioTrack extends StatelessWidget {
  final String songTrack;
  const AudioTrack({Key? key, required this.songTrack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
            ),
            title: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Music Title',
                  style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Artist',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ],
            ),
            trailing: MyTrackPopup()
          ),
        ),
        Divider(
          height: 0.0,
          indent: 80.0,
          color: Colors.grey[800],
          thickness: 1.5,
        )
      ],
    );
  }
}
