import 'package:ellicto_music_player/model/popupItem.dart';
import 'package:ellicto_music_player/data/trackPopupItems.dart';
import 'package:flutter/material.dart';

class MyTrackPopup extends StatefulWidget {
  const MyTrackPopup({Key? key}) : super(key: key);

  @override
  _MyTrackPopupState createState() => _MyTrackPopupState();
}

class _MyTrackPopupState extends State<MyTrackPopup> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupItem>(
      icon: Icon(Icons.more_vert_rounded, color: Colors.white,),
        onSelected: (item) => onSelected(context, item),
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.5)),
        color: Colors.grey[900],
        itemBuilder: (context) =>
        [...TrackPopupItems.itemList.map(buildItem).toList()]);
  }

  PopupMenuItem<PopupItem> buildItem(PopupItem item) =>
      PopupMenuItem<PopupItem>(
        height: 40.0,
        value: item,
        child: Text(
          item.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.0,
          ),
        ),
      );
  void onSelected(BuildContext context, PopupItem item) {
    setState(
          () {
        switch (item) {
          // case PopupItems.itemSettings:
          //   Navigator.of(context).pushNamed(SettingsScreen.route);
        }
      },
    );
  }
}